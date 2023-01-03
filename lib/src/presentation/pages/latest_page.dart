import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
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
      ),
    );
  } // AppBar from On Boarding Page contains back button, logo and Skip button

  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: theme.backgroundColor,
      elevation: .5,
      title: Text(
        lang.latest,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
