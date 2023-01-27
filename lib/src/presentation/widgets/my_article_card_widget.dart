import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/create_article_form/create_article_form_bloc.dart';
import 'package:octo_image/octo_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class MyArticleCardWidget extends StatelessWidget {
  const MyArticleCardWidget({
    super.key,
    required this.article,
    this.index = 0,
  });

  final Article article;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space12,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            PREVIEW_ARTICLE,
            arguments: article,
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: theme.textTheme.headlineSmall,
                    maxLines: 3,
                  ),
                  const SizedBox(height: Const.space8),
                  Row(
                    children: [
                      Icon(
                        FeatherIcons.eye,
                        size: 15,
                        color: theme.disabledColor,
                      ),
                      const SizedBox(width: Const.space8 - 3),
                      Text(
                        article.viewers.toString(),
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                      ),
                      const SizedBox(width: Const.space12),
                      Icon(
                        FeatherIcons.heart,
                        size: 15,
                        color: theme.disabledColor,
                      ),
                      const SizedBox(width: Const.space8 - 3),
                      Text(
                        article.likes.toString(),
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                      ),
                      const SizedBox(width: Const.space12),
                      Icon(
                        FeatherIcons.messageCircle,
                        size: 15,
                        color: theme.disabledColor,
                      ),
                      // const SizedBox(width: Const.space8 - 3),
                      // Text(
                      //   article.comments.toString(),
                      //   style: theme.textTheme.titleMedium
                      //   maxLines: 1,
                      // ),
                      const SizedBox(width: Const.space12),
                      Text(
                        timeago.format(article.createdAt),
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: Const.space15),
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Const.radius),
                child: OctoImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(article.thumbnail),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
