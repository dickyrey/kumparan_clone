import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/delete_comment_actor/delete_comment_actor_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({
    super.key,
    required this.article,
    required this.comment,
  });

  final Article article;
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

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
                Text(
                  timeago.format(DateTime.now()),
                  style: theme.textTheme.subtitle2,
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(FeatherIcons.moreVertical),
            iconSize: 16,
            onPressed: () {
              showDialog<dynamic>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      lang.choose_an_action,
                      style: theme.textTheme.headline3,
                    ),
                    content: SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          _listTileWidget(
                            context,
                            icon: FeatherIcons.trash,
                            label: lang.delete,
                            onTap: () {
                              Navigator.pop(context);
                              context.read<DeleteCommentActorBloc>().add(
                                    DeleteCommentActorEvent.deletePressed(
                                      id: article.url,
                                      userId: comment.id,
                                    ),
                                  );
                            },
                          ),
                          _listTileWidget(
                            context,
                            icon: FeatherIcons.alertCircle,
                            label: lang.report,
                            onTap: () {
                              // TODO(dickyrey): Reports a comment
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  SizedBox _listTileWidget(
    BuildContext context, {
    VoidCallback? onTap,
    required IconData icon,
    required String label,
  }) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Const.radius),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: ColorLight.fontTitle,
            ),
            const SizedBox(width: Const.space12),
            Text(
              label,
              style: theme.textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
