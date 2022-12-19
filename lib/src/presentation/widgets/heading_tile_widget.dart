import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kumparan_clone/src/common/const.dart';

class HeadingTileWidget extends StatelessWidget {
  const HeadingTileWidget({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(MARGIN, 0, 0, 0),
          child: Row(
            children: [
              Container(
                width: 5,
                height: 20,
                color: const Color(0xFFEB4768),
              ),
              const SizedBox(width: SPACE8),
              Text(label, style: theme.textTheme.headline1),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: onTap,
                splashRadius: 20,
                icon: const Icon(FeatherIcons.chevronRight),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN),
          child: Divider(),
        ),
      ],
    );
  }
}
