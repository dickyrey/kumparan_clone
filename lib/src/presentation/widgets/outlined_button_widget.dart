import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    super.key,
    this.width = double.infinity,
    this.height = 47,
    this.margin,
    this.isLoading = false,
    required this.onTap,
    this.borderColor,
    this.labelColor,
    required this.label,
  });

  final double width;
  final double height;
  final EdgeInsetsGeometry? margin;
  final VoidCallback onTap;
  final bool isLoading;
  final Color? borderColor;
  final Color? labelColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: 47,
      margin: margin,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RADIUS),
          ),
          side: BorderSide(
            color: borderColor ?? theme.primaryColor,
          ),
        ),
        onPressed: (isLoading == true) ? () {} : onTap,
        child: Text(
          label,
          style: theme.textTheme.bodyText2?.copyWith(
            color: (labelColor == null) ? theme.primaryColor : labelColor,
          ),
        ),
      ),
    );
  }
}
