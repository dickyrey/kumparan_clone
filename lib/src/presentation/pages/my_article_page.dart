import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_banned_watcher/user_article_banned_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_drafted_watcher/user_article_drafted_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_moderated_watcher/user_article_moderated_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_published_watcher/user_article_published_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_rejected_watcher/user_article_rejected_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/my_article_card_widget.dart';

class MyArticlePage extends StatefulWidget {
  const MyArticlePage({super.key});

  @override
  State<MyArticlePage> createState() => _MyArticlePageState();
}

class _MyArticlePageState extends State<MyArticlePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<UserArticleDraftedWatcherBloc>()
          .add(const UserArticleDraftedWatcherEvent.fetchArticle()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _appBar(context),
        body: TabBarView(
          children: [
            BlocBuilder<UserArticleDraftedWatcherBloc,
                UserArticleDraftedWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    // TODO(dickyrey): Error View
                    return EmptyDataWidget(
                      isExpanded: true,
                      illustration: CustomIcons.content,
                      label: lang.there_is_no_content_yet,
                    );
                  },
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loaded: (state) {
                    if (state.article.isNotEmpty) {
                      return ListView.separated(
                        itemCount: state.article.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Const.margin,
                            ),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyArticleCardWidget(
                            index: index,
                            article: state.article[index],
                          );
                        },
                      );
                    } else {
                      return EmptyDataWidget(
                        isExpanded: true,
                        illustration: CustomIcons.content,
                        label: lang.there_is_no_content_yet,
                      );
                    }
                  },
                );
              },
            ),
            BlocBuilder<UserArticleModeratedWatcherBloc,
                UserArticleModeratedWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    // TODO(dickyrey): Error View
                    return EmptyDataWidget(
                      isExpanded: true,
                      illustration: CustomIcons.content,
                      label: lang.there_is_no_content_yet,
                    );
                  },
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loaded: (state) {
                    if (state.article.isNotEmpty) {
                      return ListView.separated(
                        itemCount: state.article.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Const.margin,
                            ),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyArticleCardWidget(
                            index: index,
                            article: state.article[index],
                          );
                        },
                      );
                    } else {
                      return EmptyDataWidget(
                        isExpanded: true,
                        illustration: CustomIcons.content,
                        label: lang.there_is_no_content_yet,
                      );
                    }
                  },
                );
              },
            ),
            BlocBuilder<UserArticleRejectedWatcherBloc,
                UserArticleRejectedWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    // TODO(dickyrey): Error View
                    return EmptyDataWidget(
                      isExpanded: true,
                      illustration: CustomIcons.content,
                      label: lang.there_is_no_content_yet,
                    );
                  },
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loaded: (state) {
                    if (state.article.isNotEmpty) {
                      return ListView.separated(
                        itemCount: state.article.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Const.margin,
                            ),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyArticleCardWidget(
                            index: index,
                            article: state.article[index],
                          );
                        },
                      );
                    } else {
                      return EmptyDataWidget(
                        isExpanded: true,
                        illustration: CustomIcons.content,
                        label: lang.there_is_no_content_yet,
                      );
                    }
                  },
                );
              },
            ),
            BlocBuilder<UserArticlePublishedWatcherBloc,
                UserArticlePublishedWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    // TODO(dickyrey): Error View
                    return EmptyDataWidget(
                      isExpanded: true,
                      illustration: CustomIcons.content,
                      label: lang.there_is_no_content_yet,
                    );
                  },
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loaded: (state) {
                    if (state.article.isNotEmpty) {
                      return ListView.separated(
                        itemCount: state.article.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Const.margin,
                            ),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyArticleCardWidget(
                            index: index,
                            article: state.article[index],
                          );
                        },
                      );
                    } else {
                      return EmptyDataWidget(
                        isExpanded: true,
                        illustration: CustomIcons.content,
                        label: lang.there_is_no_content_yet,
                      );
                    }
                  },
                );
              },
            ),
            BlocBuilder<UserArticleBannedWatcherBloc,
                UserArticleBannedWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    // TODO(dickyrey): Error View
                    return EmptyDataWidget(
                      isExpanded: true,
                      illustration: CustomIcons.content,
                      label: lang.there_is_no_content_yet,
                    );
                  },
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loaded: (state) {
                    if (state.article.isNotEmpty) {
                      return ListView.separated(
                        itemCount: state.article.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Const.margin,
                            ),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyArticleCardWidget(
                            index: index,
                            article: state.article[index],
                          );
                        },
                      );
                    } else {
                      return EmptyDataWidget(
                        isExpanded: true,
                        illustration: CustomIcons.content,
                        label: lang.there_is_no_content_yet,
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: theme.colorScheme.background,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.my_content,
        style: theme.textTheme.headlineSmall,
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headlineSmall,
        labelColor: ColorLight.fontTitle,
        unselectedLabelColor: ColorLight.fontSubtitle,
        isScrollable: true,
        onTap: (index) async {
          if (index == 0) {
            final state = context.read<UserArticleDraftedWatcherBloc>().state;
            if (state != const UserArticleDraftedWatcherState.loaded([])) {
              context
                  .read<UserArticleDraftedWatcherBloc>()
                  .add(const UserArticleDraftedWatcherEvent.fetchArticle());
            }
          } else if (index == 1) {
            final state = context.read<UserArticleModeratedWatcherBloc>().state;
            if (state != const UserArticleModeratedWatcherState.loaded([])) {
              context
                  .read<UserArticleModeratedWatcherBloc>()
                  .add(const UserArticleModeratedWatcherEvent.fetchArticle());
            }
          } else if (index == 2) {
            final state = context.read<UserArticleRejectedWatcherBloc>().state;
            if (state != const UserArticleRejectedWatcherState.loaded([])) {
              context
                  .read<UserArticleRejectedWatcherBloc>()
                  .add(const UserArticleRejectedWatcherEvent.fetchArticle());
            }
          } else if (index == 3) {
            final state = context.read<UserArticlePublishedWatcherBloc>().state;
            if (state != const UserArticlePublishedWatcherState.loaded([])) {
              context
                  .read<UserArticlePublishedWatcherBloc>()
                  .add(const UserArticlePublishedWatcherEvent.fetchArticle());
            }
          } else if (index == 4) {
            final state = context.read<UserArticleBannedWatcherBloc>().state;
            if (state != const UserArticleBannedWatcherState.loaded([])) {
              context
                  .read<UserArticleBannedWatcherBloc>()
                  .add(const UserArticleBannedWatcherEvent.fetchArticle());
            }
          }
        },
        tabs: [
          Tab(text: lang.draf),
          Tab(text: lang.moderated),
          Tab(text: lang.rejected),
          Tab(text: lang.published),
          Tab(text: lang.banned),
        ],
      ),
    );
  }
}
