import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:octo_image/octo_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleCardWidget extends StatelessWidget {
  const ArticleCardWidget({
    super.key,
    required this.article,
    required this.cardAlignment,
    this.index = 0,
    this.useRank = false,
  });

  final Article article;
  final CardAlignment cardAlignment;
  final int index;
  final bool useRank;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (cardAlignment == CardAlignment.horizontal) {
      return Container(
        width: 280,
        margin: const EdgeInsets.only(right: Const.space12),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, READ_ARTICLE, arguments: article);
          },
          borderRadius: BorderRadius.circular(Const.radius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Const.radius),
                child: OctoImage(
                  fit: BoxFit.cover,
                  width: 280,
                  height: 200,
                  image: CachedNetworkImageProvider(article.thumbnail),
                ),
              ),
              const SizedBox(height: Const.space12),
              Text(
                article.title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  height: 1.5,
                ),
                maxLines: 2,
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    FeatherIcons.eye,
                    size: 15,
                    color: theme.disabledColor,
                  ),
                  const SizedBox(width: Const.space8),
                  Text(
                    article.viewers.toString(),
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                  ),
                  const SizedBox(width: Const.space15),
                  Icon(
                    FeatherIcons.heart,
                    size: 15,
                    color: theme.disabledColor,
                  ),
                  const SizedBox(width: Const.space8),
                  Text(
                    article.likes.toString(),
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                  ),
                  const SizedBox(width: Const.space15),
                  Icon(
                    FeatherIcons.messageCircle,
                    size: 15,
                    color: theme.disabledColor,
                  ),
                  const SizedBox(width: Const.space8),
                  Text(
                    article.comments.toString(),
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                  ),
                  const SizedBox(width: Const.space15),
                  Text(
                    timeago.format(article.createdAt),
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () async {
                      await FlutterShare.share(
                        title: 'Share Article',
                        linkUrl: article.url,
                        chooserTitle: 'Example Chooser Title',
                      );
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
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space12,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, READ_ARTICLE, arguments: article);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (useRank == true)
                Text(
                  '${index + 1}.',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                )
              else
                const SizedBox(),
              if (useRank == true)
                const SizedBox(width: Const.space12)
              else
                const SizedBox(),
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
}
