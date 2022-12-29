import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    super.key,
    required this.illustration,
    required this.label,
    this.isExpanded = false,
    this.useButton = false,
    this.margin = 0,
    this.buttonLabel,
    this.onTap,
  });

  final String illustration;
  final String label;
  final bool isExpanded;
  final bool useButton;
  final double margin;
  final String? buttonLabel;
  final VoidCallback? onTap;

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
            textAlign: TextAlign.center,
            style: theme.textTheme.headline3,
          ),
          const SizedBox(height: SPACE25),
          (useButton == true)
              ? Padding(
                  padding: EdgeInsets.all(margin),
                  child: ElevatedButtonWidget(
                    onTap: onTap,
                    label: buttonLabel,
                  ),
                )
              : const SizedBox(),
          (isExpanded == true)
              ? const Expanded(child: SizedBox())
              : const SizedBox(),
        ],
      ),
    );
  }
}
