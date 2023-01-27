import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/my_article_watcher/my_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/my_article_card_widget.dart';

class MyArticlePage extends StatelessWidget {
  const MyArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _appBar(context),
        body: TabBarView(
          children: [
            BlocBuilder<MyArticleWatcherBloc, MyArticleWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
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
                    return ListView.separated(
                      itemCount: state.articleList.take(5).length,
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
                          article: state.articleList[index],
                        );
                      },
                    );
                  },
                );
              },
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
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
        tabs: [
          Tab(text: lang.draf),
          Tab(text: lang.moderated),
          Tab(text: lang.rejected),
          Tab(text: lang.published),
        ],
      ),
    );
  }
}
