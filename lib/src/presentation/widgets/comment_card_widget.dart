
import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: SPACE15),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.red,
          ),
          const SizedBox(width: SPACE12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('chrissyface', style: theme.textTheme.headline5),
                const SizedBox(height: SPACE8 - 5),
                Text(
                  'good article easy to read ASDASJM ASMDASMDASM DSAMDS AMDSAD SMA',
                  style: theme.textTheme.bodyText2,
                ),
                const SizedBox(height: SPACE8),
                Text('1 moment ago', style: theme.textTheme.subtitle2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
