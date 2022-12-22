import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    super.key,
    required this.illustration,
    required this.label,
  });

  final String illustration;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          Image.asset(
            CustomIcons.content,
            width: 200,
          ),
          const SizedBox(height: SPACE15),
          Text(
            label,
            style: theme.textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
