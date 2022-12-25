import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.fontSize,
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final IconData? icon;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN,
          vertical: SPACE12,
        ),
        child: Row(
          children: [
            (icon != null)
                ? Icon(icon, color: ColorLight.fontTitle)
                : const SizedBox(),
            (icon != null) ? const SizedBox(width: SPACE15) : const SizedBox(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyText2?.copyWith(
                      fontSize: fontSize,
                    ),
                  ),
                  const SizedBox(height: 5),
                  (subtitle != null)
                      ? Text(subtitle!, style: theme.textTheme.subtitle2)
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}