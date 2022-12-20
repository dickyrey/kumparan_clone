import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';

class HeadingTileWidget extends StatefulWidget {
  const HeadingTileWidget({
    super.key,
    required this.label,
    required this.onTap,
    this.type = HeadingTileType.normal,
  });

  final String label;
  final VoidCallback onTap;
  final HeadingTileType type;

  @override
  State<HeadingTileWidget> createState() => _HeadingTileWidgetState();
}

class _HeadingTileWidgetState extends State<HeadingTileWidget> {
  // Declare a variable to store the selected value
  String selectedValue = 'a';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

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
              Text(widget.label, style: theme.textTheme.headline1),
              const Expanded(child: SizedBox()),
              if (widget.type == HeadingTileType.normal)
                IconButton(
                  onPressed: widget.onTap,
                  splashRadius: 20,
                  icon: const Icon(FeatherIcons.chevronRight),
                )
              else
                Container(
                  height: 35,
                  padding: const EdgeInsets.symmetric(horizontal: SPACE8),
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.disabledColor),
                    borderRadius: BorderRadius.circular(RADIUS),
                  ),
                  child: DropdownButton<String>(
                    value: selectedValue,
                    borderRadius: BorderRadius.circular(RADIUS),
                    underline: Container(),
                    icon: const Icon(
                      FeatherIcons.chevronDown,
                      color: ColorLight.fontTitle,
                    ),
                    style: theme.textTheme.bodyText2,
                    items: ['a', 'b']
                        .map(
                          (value) => DropdownMenuItem(
                            value: value,
                            child: Text(
                              (value == 'a') ? 'Recommend' : 'Newest',
                              style: theme.textTheme.bodyText2,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (v) {
                      setState(() {
                        selectedValue = v!;
                      });
                    },
                  ),
                ),
              (widget.type == HeadingTileType.normal)
                  ? const SizedBox()
                  : const SizedBox(width: MARGIN),
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
