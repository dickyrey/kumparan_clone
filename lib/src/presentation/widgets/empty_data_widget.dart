import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    super.key,
    required this.illustration,
    required this.label,
    this.isExpanded = false,
  });

  final String illustration;
  final String label;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          (isExpanded == true)
              ? const Expanded(child: SizedBox())
              : const SizedBox(),
          Image.asset(
            illustration,
            width: 200,
          ),
          const SizedBox(height: SPACE15),
          Text(
            label,
            style: theme.textTheme.headline3,
          ),
          (isExpanded == true)
              ? const Expanded(child: SizedBox())
              : const SizedBox(),
        ],
      ),
    );
  }
}
