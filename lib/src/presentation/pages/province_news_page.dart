import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';

class ProvinceNewsPage extends StatelessWidget {
  const ProvinceNewsPage({super.key, required this.province});

  final String province;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context, title: province),
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
              return Column(
                children: [
                  ListView.separated(
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
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  AppBar _appBar(BuildContext context, {required String title}) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.backgroundColor,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        title,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
