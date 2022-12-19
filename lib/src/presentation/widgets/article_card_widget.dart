import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:octo_image/octo_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleCardWidget extends StatelessWidget {
  const ArticleCardWidget({
    super.key,
    required this.article,
    required this.cardAlignment,
  });

  final Article article;
  final CardAlignment cardAlignment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (cardAlignment == CardAlignment.horizontal) {
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
                image: CachedNetworkImageProvider(article.thumbnail),
              ),
            ),
            const SizedBox(height: SPACE12),
            Text(
              article.title,
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
                    article.profilePicture,
                  ),
                ),
                const SizedBox(width: SPACE12),
                Text(
                  article.creatorName,
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
                  article.likes.toString(),
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
                  article.comments.toString(),
                  style: theme.textTheme.subtitle2,
                  maxLines: 1,
                ),
                const SizedBox(width: SPACE15),
                Text(
                  timeago.format(article.createdAt),
                  style: theme.textTheme.subtitle2,
                  maxLines: 1,
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    // TODO(dickyrey): Open bottom sheet to share article to sosmed
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
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN,
          vertical: SPACE12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: theme.textTheme.headline3,
                    maxLines: 3,
                  ),
                  const SizedBox(height: SPACE8),
                  Row(
                    children: [
                      OctoImage(
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        image: CachedNetworkImageProvider(
                          article.profilePicture,
                        ),
                      ),
                      const SizedBox(width: SPACE12),
                      Text(
                        article.creatorName,
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
                        article.likes.toString(),
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
                        article.comments.toString(),
                        style: theme.textTheme.subtitle2,
                        maxLines: 1,
                      ),
                      const SizedBox(width: SPACE15),
                      Text(
                        timeago.format(article.createdAt),
                        style: theme.textTheme.subtitle2,
                        maxLines: 1,
                      ),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {
                          // TODO(dickyrey): Open bottom sheet to share article to sosmed
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
            ),
            const SizedBox(width: SPACE15),
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(RADIUS),
                child: OctoImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(article.thumbnail),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
