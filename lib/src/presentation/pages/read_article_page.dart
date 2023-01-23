import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_comment_watcher/article_comment_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_detail_watcher/article_detail_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_like_watcher/article_like_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/delete_comment_actor/delete_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/send_comment_actor/send_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/comment_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class ReadArticlePage extends StatefulWidget {
  const ReadArticlePage({super.key, required this.article});

  final Article article;

  @override
  State<ReadArticlePage> createState() => _ReadArticlePageState();
}

class _ReadArticlePageState extends State<ReadArticlePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ArticleDetailWatcherBloc>().add(
            ArticleDetailWatcherEvent.fetchArticleDetail(widget.article.url),
          );
      context.read<ArticleLikeWatcherBloc>().add(
            ArticleLikeWatcherEvent.fetchLikeStatus(
              widget.article.url,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context, article: widget.article),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Const.space25),
                  Text(
                    'NEWS',
                    style: theme.textTheme.headline4
                        ?.copyWith(color: theme.primaryColor),
                  ),
                  const SizedBox(height: Const.space8),
                  Text(
                    widget.article.title,
                    style: theme.textTheme.headline1,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    '${DateFormat.yMMMMEEEEd().format(widget.article.createdAt)} - waktu baca 2 menit',
                    style: theme.textTheme.subtitle2,
                  ),
                  const SizedBox(height: Const.space15),
                  BlocBuilder<ArticleDetailWatcherBloc,
                      ArticleDetailWatcherState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        loaded: (state) {
                          return Html(data: state.articleDetail.content);
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 7,
            margin: EdgeInsets.zero,
            child: Container(
              width: Screens.width(context),
              height: 70,
              color: theme.backgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      hintText: lang.write_comment,
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  BlocBuilder<ArticleLikeWatcherBloc, ArticleLikeWatcherState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () {
                          return GestureDetector(
                            onTap: () {
                              context.read<ArticleLikeWatcherBloc>().add(
                                    ArticleLikeWatcherEvent.likePressed(
                                      widget.article.url,
                                    ),
                                  );
                            },
                            child: const Icon(
                              FeatherIcons.heart,
                              color: ColorLight.fontTitle,
                            ),
                          );
                        },
                        liked: (_) {
                          return GestureDetector(
                            onTap: () {
                              context.read<ArticleLikeWatcherBloc>().add(
                                    ArticleLikeWatcherEvent.likePressed(
                                      widget.article.url,
                                    ),
                                  );
                            },
                            child: const Icon(
                              Icons.favorite,
                              color: ColorDark.error,
                            ),
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(width: Const.space15),
                  GestureDetector(
                    onTap: () {
                      context.read<ArticleCommentWatcherBloc>().add(
                            ArticleCommentWatcherEvent.fetchComments(
                              widget.article.url,
                            ),
                          );
                      _showCommentDialog(context);
                    },
                    child: const Icon(FeatherIcons.messageCircle),
                  ),
                  const SizedBox(width: Const.space15),
                  GestureDetector(
                    onTap: () async {
                      await FlutterShare.share(
                        title: 'Share message',
                        linkUrl: widget.article.url,
                        chooserTitle: 'Example Chooser Title',
                      );
                    },
                    child: const Icon(FeatherIcons.share2),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> _showCommentDialog(BuildContext context) {
    return showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      builder: (BuildContext context) {
        return CommentDialog(article: widget.article);
      },
    );
  }

  AppBar _appBar(BuildContext context, {required Article article}) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.backgroundColor,
      elevation: .5,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
    );
  }
}

class CommentDialog extends StatefulWidget {
  const CommentDialog({super.key, required this.article});

  final Article article;

  @override
  State<CommentDialog> createState() => _CommentDialogState();
}

class _CommentDialogState extends State<CommentDialog> {
  late TextEditingController _commentController;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return MultiBlocListener(
      listeners: [
        BlocListener<SendCommentActorBloc, SendCommentActorState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              sendFailure: (_) {
                showToast(
                  msg: lang.an_error_occurred_while_posting_the_comment,
                );
              },
              sendSuccess: (_) {
                _commentController.clear();
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
                context
                    .read<SendCommentActorBloc>()
                    .add(const SendCommentActorEvent.init());
                context.read<ArticleCommentWatcherBloc>().add(
                      ArticleCommentWatcherEvent.refreshComments(
                        widget.article.url,
                      ),
                    );
              },
            );
          },
        ),
        BlocListener<DeleteCommentActorBloc, DeleteCommentActorState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              deleteInFailure: (_) {
                context
                    .read<DeleteCommentActorBloc>()
                    .add(const DeleteCommentActorEvent.init());
                showToast(
                  msg: lang.an_error_occurred_while_deleting_the_comment,
                );
              },
              deleteInSuccess: (_) {
                 showToast(
                  msg: lang.comment_deleted,
                  gravity: ToastGravity.BOTTOM,
                );
                context
                    .read<DeleteCommentActorBloc>()
                    .add(const DeleteCommentActorEvent.init());
                context.read<ArticleCommentWatcherBloc>().add(
                      ArticleCommentWatcherEvent.refreshComments(
                        widget.article.url,
                      ),
                    );
              },
            );
          },
        ),
      ],
      child: SizedBox(
        height: Screens.heigth(context) - 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Const.margin,
                vertical: Const.space12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    lang.comments,
                    style: theme.textTheme.headline4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(FeatherIcons.x),
                  )
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<ArticleCommentWatcherBloc,
                  ArticleCommentWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (state) {
                      return ListView.builder(
                        controller: _scrollController,
                        itemCount: state.comments.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.fromLTRB(
                          Const.margin,
                          0,
                          Const.margin,
                          Const.space50 + Const.space25,
                        ),
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
                          final comment = state.comments[index];
                          return CommentCardWidget(
                            article: widget.article,
                            comment: comment,
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Card(
              elevation: 7,
              margin: EdgeInsets.zero,
              child: Container(
                width: Screens.width(context),
                height: 70,
                color: theme.backgroundColor,
                padding: const EdgeInsets.only(left: Const.margin),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        controller: _commentController,
                        hintText: lang.write_comment,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SendCommentActorBloc>().add(
                              SendCommentActorEvent.sendComment(
                                id: widget.article.url,
                                comment: _commentController.text,
                              ),
                            );
                      },
                      icon: Icon(
                        Icons.send,
                        color: theme.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
