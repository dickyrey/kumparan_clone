import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/notice/notice_watcher_bloc.dart';
import 'package:octo_image/octo_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<NoticeWatcherBloc>()
          .add(const NoticeWatcherEvent.fetchNotice()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<NoticeWatcherBloc, NoticeWatcherState>(
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
              return ListView.builder(
                itemCount: state.noticeList.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final data = state.noticeList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: MARGIN,
                      vertical: SPACE12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(RADIUS),
                          child: OctoImage(
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(data.thumbnail),
                          ),
                        ),
                        const SizedBox(width: SPACE15),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: theme.textTheme.bodyText2,
                              children: [
                                TextSpan(
                                  text: data.creatorName,
                                  style: theme.textTheme.headline3,
                                ),
                                TextSpan(
                                  text: ' ${lang.publish_a_content} ',
                                  style: theme.textTheme.bodyText2,
                                ),
                                TextSpan(
                                  text: data.title,
                                  style: theme.textTheme.headline3,
                                ),
                                TextSpan(
                                  text: '\n${timeago.format(data.createdAt)}',
                                  style: theme.textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

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
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FeatherIcons.settings,
            color: ColorLight.fontTitle,
          ),
        ),
      ],
    );
  }
}
