import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_detail_watcher/article_detail_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_form/article_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/delete_article_actor/delete_article_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/article_comment_watcher/article_comment_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/delete_comment_actor/delete_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/send_comment_actor/send_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/change_to_moderated_actor/change_to_moderated_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_drafted_watcher/user_article_drafted_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/comment_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/dialog_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';
import 'package:octo_image/octo_image.dart';

class PreviewArticlePage extends StatefulWidget {
  const PreviewArticlePage({super.key, required this.article});

  final Article article;

  @override
  State<PreviewArticlePage> createState() => _PreviewArticlePageState();
}

class _PreviewArticlePageState extends State<PreviewArticlePage> {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ArticleDetailWatcherBloc>().add(
            ArticleDetailWatcherEvent.fetchArticleDetail(widget.article.url),
          );
    });
  }

  Widget upload() {
    final lang = AppLocalizations.of(context)!;
    return FloatingActionButton(
      onPressed: () {
        key.currentState?.closeFABs();
        showConfirmationDialog(
          context,
          title: 'Apakah Kamu yakin ingin terbitkan sekarang?',
          primaryButtonLabel: lang.yes,
          onPrimaryButtonTap: () {
            context.read<ChangeToModeratedActorBloc>().add(
                  ChangeToModeratedActorEvent.sendToModerated(
                    widget.article.url,
                  ),
                );
            Navigator.pop(context);
          },
        );
      },
      heroTag: 'Publish',
      tooltip: 'Publish',
      child: const Icon(
        FeatherIcons.upload,
        color: Colors.white,
      ),
    );
  }

  Widget edit() {
    return BlocBuilder<ArticleDetailWatcherBloc, ArticleDetailWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return const SizedBox();
          },
          loaded: (state) {
            return FloatingActionButton(
              onPressed: () {
                key.currentState?.closeFABs();
                final category = context.read<CategoryWatcherBloc>().state;
                context.read<ArticleFormBloc>().add(
                      ArticleFormEvent.fetchCategoryList(
                        category.categories,
                      ),
                    );

                context.read<ArticleFormBloc>().add(
                      ArticleFormEvent.initialize(
                        state.articleDetail,
                      ),
                    );
                Navigator.pushNamed(
                  context,
                  ARTICLE_FORM,
                  arguments: true,
                );
              },
              heroTag: 'Edit',
              tooltip: 'Edit',
              child: const Icon(
                FeatherIcons.edit2,
                color: Colors.white,
              ),
            );
          },
        );
      },
    );
  }

  Widget delete() {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;
    return FloatingActionButton(
      onPressed: () {
        key.currentState?.closeFABs();
        showConfirmationDialog(
          context,
          title: 'Apakah kamu yakin ingin menghapus artikel ini?',
          primaryButtonLabel: lang.delete,
          onPrimaryButtonTap: () {
            context
                .read<DeleteArticleActorBloc>()
                .add(DeleteArticleActorEvent.delete(widget.article.url));
            Navigator.pop(context);
          },
        );
      },
      heroTag: 'Delete',
      tooltip: 'Delete',
      backgroundColor: theme.colorScheme.error,
      child: const Icon(
        FeatherIcons.trash,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<DeleteArticleActorBloc, DeleteArticleActorState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              error: (_) {
                showToast(msg: 'Gagal menghapus artikel');
              },
              success: (value) {
                context
                    .read<UserArticleDraftedWatcherBloc>()
                    .add(const UserArticleDraftedWatcherEvent.fetchArticle());
                showToast(msg: 'Artikel dihapus');
                Navigator.pop(context);
              },
            );
          },
        ),
        BlocListener<ChangeToModeratedActorBloc, ChangeToModeratedActorState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              success: (_) {
                showToast(msg: 'Artikel akan ditinjau');
                context
                    .read<UserArticleDraftedWatcherBloc>()
                    .add(const UserArticleDraftedWatcherEvent.fetchArticle());
                Navigator.pop(context);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: _appBar(context, article: widget.article),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Const.space25),
              Text(
                'NEWS',
                style: theme.textTheme.headlineSmall
                    ?.copyWith(color: theme.primaryColor),
              ),
              const SizedBox(height: Const.space8),
              ClipRRect(
                borderRadius: BorderRadius.circular(Const.radius),
                child: OctoImage(
                  image: CachedNetworkImageProvider(widget.article.image),
                ),
              ),
              const SizedBox(height: Const.space15),
              Text(
                widget.article.title,
                style: theme.textTheme.headlineLarge,
              ),
              const SizedBox(height: Const.space12),
              Text(
                '${DateFormat.yMMMMEEEEd().format(widget.article.createdAt)} - waktu baca 2 menit',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: Const.space15),
              BlocBuilder<ArticleDetailWatcherBloc, ArticleDetailWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (state) {
                      return Html(
                        data: state.articleDetail.content,
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: AnimatedFloatingActionButton(
          fabButtons: <Widget>[
            upload(),
            edit(),
            delete(),
          ],
          key: key,
          colorStartAnimation: theme.colorScheme.background,
          colorEndAnimation: theme.colorScheme.background,
          animatedIconData: AnimatedIcons.menu_close,
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context, {required Article article}) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.colorScheme.background,
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
                    style: theme.textTheme.headlineSmall,
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
                color: theme.colorScheme.background,
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
