import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({super.key, required this.comment});

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: Const.space15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: theme.disabledColor,
            backgroundImage: CachedNetworkImageProvider(
              comment.user.photo.isEmpty ? Const.photo : comment.user.photo,
            ),
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.user.name,
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: Const.space8 - 5),
                Text(
                  comment.body,
                  style: theme.textTheme.bodyText2,
                ),
                const SizedBox(height: Const.space8),
                Text(timeago.format(DateTime.now()),
                    style: theme.textTheme.subtitle2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
