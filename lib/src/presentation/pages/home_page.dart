import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:octo_image/octo_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context
        .read<NewArticleWatcherBloc>()
        .add(const NewArticleWatcherEvent.fetchNewArticle()));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(),
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
                return Container(
                  width: double.infinity,
                  height: 275,
                  child: ListView.builder(
                    itemCount: state.articleList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                    itemBuilder: (context, index) {
                      final data = state.articleList[index];
                      return Container(
                        width: 280,
                        margin: const EdgeInsets.only(right: SPACE12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(RADIUS),
                              child: OctoImage(
                                fit: BoxFit.cover,
                                image:
                                    CachedNetworkImageProvider(data.thumbnail),
                              ),
                            ),
                            const SizedBox(height: SPACE12),
                            Text(
                              data.title,
                              style: theme.textTheme.headline3,
                              maxLines: 2,
                            ),
                            const SizedBox(height: SPACE8),
                            Row(
                              children: [
                                OctoImage(
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                  image: CachedNetworkImageProvider(
                                    data.profilePicture,
                                  ),
                                ),
                                Text(
                                  data.creatorName,
                                  style: theme.textTheme.subtitle2,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                            const SizedBox(height: SPACE8),
                            Row(
                              children: [
                                Icon(
                                  FeatherIcons.heart,
                                  size: 15,
                                  color: theme.disabledColor,
                                ),
                                const SizedBox(width: SPACE8),
                                Text(
                                  '1212',
                                  style: theme.textTheme.subtitle2,
                                  maxLines: 1,
                                ),
                                const SizedBox(width: SPACE15),
                                Icon(
                                  FeatherIcons.messageCircle,
                                  size: 15,
                                  color: theme.disabledColor,
                                ),
                                const SizedBox(width: SPACE8),
                                Text(
                                  '1212',
                                  style: theme.textTheme.subtitle2,
                                  maxLines: 1,
                                ),
                                const Expanded(child: SizedBox()),
                                InkWell(
                                  onTap: () {
                                    //TODO(dickyrey): Open bottom sheet to share article to sosmed
                                  },
                                  child: Icon(
                                    FeatherIcons.moreVertical,
                                    size: 20,
                                    color: theme.disabledColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ));
  }
}
