import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';

class TrendingArticlePage extends StatelessWidget {
  const TrendingArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _appBar(context),
        body: const TabBarView(
          children: [
            _ContentList(),
            _ContentList(),
            _ContentList(),
            _ContentList(),
            _ContentList(),
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
        lang.trending,
        style: theme.textTheme.headlineSmall,
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headlineSmall,
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

class _ContentList extends StatelessWidget {
  const _ContentList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
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
            return ListView.separated(
              itemCount: state.articleList.take(5).length,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: Const.margin),
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
            );
          },
        );
      },
    );
  }
}
