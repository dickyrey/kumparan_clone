import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/read_history_watcher/read_history_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';

class ReadHistoryPage extends StatefulWidget {
  const ReadHistoryPage({super.key});

  @override
  State<ReadHistoryPage> createState() => _ReadHistoryPageState();
}

class _ReadHistoryPageState extends State<ReadHistoryPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<ReadHistoryWatcherBloc>()
          .add(const ReadHistoryWatcherEvent.fetchArticle()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<ReadHistoryWatcherBloc, ReadHistoryWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return Container();
            },
            loading: (_) {
              return const Center(child: CircularProgressIndicator());
            },
            error: (_) {
              return Container();
            },
            loaded: (state) {
              if (state.articleList.isNotEmpty) {
                return ListView.separated(
                  itemCount: state.articleList.length,
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
              } else {
                return const EmptyDataWidget(
                  illustration: CustomIcons.content,
                  label: 'Tidak ada history',
                );
              }
            },
          );
        },
      ),
    );
  }

  // AppBar from On Boarding Page contains back button, logo and Skip button
  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

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
      title: Text(
        lang.read_history,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
