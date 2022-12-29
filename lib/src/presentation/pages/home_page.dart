import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/feature_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/heading_tile_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<NewArticleWatcherBloc>()
          .add(const NewArticleWatcherEvent.fetchNewArticle()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _appBar(context),
        body: const TabBarView(
          children: [
            /// Main [Tab] of Application.
            /// Contains Horizontal [ArticleCardWidget], [FeatureCardWidget] and [HeadingTileWidget]
            ForYouTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
          ],
        ),
      ),
    );
  }

  /// [AppBar] of [HomePage]
  /// Contains `Logo` and `Search` [TextFormFieldWidget]

  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: theme.backgroundColor,
      leading: SvgPicture.asset(CustomIcons.duolingo),
      title: InkWell(
        onTap: () {
          // TODO(dickyrey): Search all Article
        },
        borderRadius: BorderRadius.circular(RADIUS),
        child: Container(
          height: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RADIUS),
            color: theme.disabledColor.withOpacity(.2),
          ),
          child: TextFormFieldWidget(
            hintText: lang.search_here,
            enabled: false,
            prefixIcon: Icon(
              FeatherIcons.search,
              color: theme.dividerColor.withOpacity(.5),
            ),
          ),
        ),
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headline4,
        labelColor: ColorLight.fontTitle,
        unselectedLabelColor: ColorLight.fontTitle,
        isScrollable: true,
        tabs: const [
          Tab(text: 'For You'),
          Tab(text: 'Entertaiment'),
          Tab(text: 'News'),
          Tab(text: 'Mom'),
          Tab(text: 'Food & Drink'),
        ],
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  /// Creates view for [TabBarView]
  /// This [Widget] contains [ArticleCardWidget], [FeatureCardWidget]
  const ForYouTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: SPACE15),

          /// Horizontal Scrollable [ArticleCardWidget]
          BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) {
                  return Container();
                },
                error: (_) {
                  return Container();
                },
                loaded: (state) {
                  return SizedBox(
                    width: double.infinity,
                    height: 305,
                    child: ListView.builder(
                      itemCount: state.articleList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                      itemBuilder: (context, index) {
                        final data = state.articleList[index];
                        return ArticleCardWidget(
                          article: data,
                          cardAlignment: CardAlignment.horizontal,
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(height: SPACE15),
          // Main content separator
          Container(
            color: theme.disabledColor.withOpacity(.3),
            height: SPACE8,
          ),

          const SizedBox(height: SPACE12),

          /// Top Row [FeatureCardWidget] allow users to choose unique feature
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN),
            child: Row(
              children: [
                FeatureCardWidget(
                  onTap: () {
                    Navigator.pushNamed(context, TRENDING_ARTICLE);
                  },
                  label: lang.trending,
                  backgroundColor: const Color(0xFFEB4768),
                  icon: FeatherIcons.barChart2,
                ),
                const SizedBox(width: SPACE12),
                FeatureCardWidget(
                  onTap: () {
                    showToast(msg: lang.feature_not_available_yet);
                  },
                  label: lang.membership,
                  backgroundColor: const Color(0xFF00B5B4),
                  icon: FeatherIcons.award,
                ),
                const SizedBox(width: SPACE12),
                FeatureCardWidget(
                  onTap: () {
                    // TODO(dickyrey): Opinions and Stories
                  },
                  label: lang.opinions_and_stories,
                  backgroundColor: const Color(0xFF33A4DA),
                  icon: FeatherIcons.edit3,
                ),
              ],
            ),
          ),
          const SizedBox(height: SPACE8),

          /// Second Row [FeatureCardWidget] allow users to choose unique feature
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN),
            child: Row(
              children: [
                FeatureCardWidget(
                  onTap: () {
                    // TODO(dickyrey): List of Article contains only photo
                  },
                  label: lang.photo_gallery,
                  backgroundColor: const Color(0xFF0071A7),
                  icon: FeatherIcons.camera,
                ),
                const SizedBox(width: SPACE12),
                FeatureCardWidget(
                  onTap: () {
                    // TODO(dickyrey): List of articles contains video
                  },
                  label: lang.video,
                  backgroundColor: const Color(0xFFFA8B48),
                  icon: FeatherIcons.film,
                ),
                const SizedBox(width: SPACE12),
                FeatureCardWidget(
                  onTap: () {
                    showToast(msg: lang.feature_not_available_yet);
                  },
                  label: lang.vaccine_information_center,
                  backgroundColor: const Color(0xFFE51E44),
                  icon: FeatherIcons.thermometer,
                ),
              ],
            ),
          ),
          const SizedBox(height: SPACE12),

          // / Main content `separator`
          Container(
            color: theme.disabledColor.withOpacity(.3),
            height: SPACE8,
          ),

          /// [HeadingTileWidget] is a [Widget] to tell user what main topic is
          /// First heading is `Trending News/Article`
          HeadingTileWidget(
            label: lang.trending,
            onTap: () {
              Navigator.pushNamed(context, TRENDING_ARTICLE);
            },
          ),

          /// List of `Trending Article`
          /// Allow users to explore more trending article
          BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) {
                  return Container();
                },
                error: (_) {
                  return Container();
                },
                loaded: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListView.separated(
                        itemCount: state.articleList.take(5).length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: MARGIN),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return ArticleCardWidget(
                            article: state.articleList[index],
                            cardAlignment: CardAlignment.vertical,
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: MARGIN),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TRENDING_ARTICLE);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lang.see_more,
                                style: theme.textTheme.bodyText1?.copyWith(
                                  color: theme.primaryColor,
                                ),
                              ),
                              const SizedBox(width: SPACE12),
                              Icon(
                                FeatherIcons.arrowRight,
                                size: 16,
                                color: theme.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Container(
            color: theme.disabledColor.withOpacity(.3),
            height: SPACE8,
          ),
        ],
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: SPACE15),

          /// Horizontal Scrollable [ArticleCardWidget]
          BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) {
                  return Container();
                },
                error: (_) {
                  return Container();
                },
                loaded: (state) {
                  return SizedBox(
                    width: double.infinity,
                    height: 305,
                    child: ListView.builder(
                      itemCount: state.articleList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                      itemBuilder: (context, index) {
                        final data = state.articleList[index];
                        return ArticleCardWidget(
                          article: data,
                          cardAlignment: CardAlignment.horizontal,
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),

          const SizedBox(height: SPACE25),
          
          /// [HeadingTileWidget] is a [Widget] to tell user what main topic is
          /// First heading is `Trending News/Article`
          HeadingTileWidget(
            label: lang.trending,
            onTap: () {
              Navigator.pushNamed(context, TRENDING_ARTICLE);
            },
          ),

          /// List of `Trending Article`
          /// Allow users to explore more trending article
          BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) {
                  return Container();
                },
                error: (_) {
                  return Container();
                },
                loaded: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListView.separated(
                        itemCount: state.articleList.take(5).length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: MARGIN),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return ArticleCardWidget(
                            index: index,
                            article: state.articleList[index],
                            cardAlignment: CardAlignment.vertical,
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),

          const SizedBox(height: SPACE25),

          /// [HeadingTileWidget] is a [Widget] to tell user what main topic is
          /// First heading is `Trending News/Article`
          HeadingTileWidget(
            label: lang.feed,
            type: HeadingTileType.dropdown,
          ),

          /// List of `Newest or Recommended Article`
          /// Allow users to explore more trending article
          BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) {
                  return Container();
                },
                error: (_) {
                  return Container();
                },
                loaded: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListView.separated(
                        itemCount: state.articleList.take(5).length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: MARGIN),
                            child: Divider(),
                          );
                        },
                        itemBuilder: (context, index) {
                          return ArticleCardWidget(
                            article: state.articleList[index],
                            cardAlignment: CardAlignment.vertical,
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: MARGIN),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TRENDING_ARTICLE);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lang.see_more,
                                style: theme.textTheme.bodyText1?.copyWith(
                                  color: theme.primaryColor,
                                ),
                              ),
                              const SizedBox(width: SPACE12),
                              Icon(
                                FeatherIcons.arrowRight,
                                size: 16,
                                color: theme.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
