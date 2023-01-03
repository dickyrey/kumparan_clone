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
          horizontal: Const.margin,
          vertical: Const.space12,
        ),
        child: Row(
          children: [
            if (icon != null)
              Icon(icon, color: ColorLight.fontTitle)
            else
              const SizedBox(),
            if (icon != null)
              const SizedBox(width: Const.space15)
            else
              const SizedBox(),
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
                  if (subtitle != null)
                    Text(subtitle!, style: theme.textTheme.subtitle2)
                  else
                    const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
