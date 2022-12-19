import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/const.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    super.key,
    required this.label,
    required this.onTap,
    required this.backgroundColor,
    required this.icon,
  });

  final String label;
  final VoidCallback onTap;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(RADIUS),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(RADIUS),
          ),
          padding: const EdgeInsets.all(SPACE8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(width: SPACE8),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.headline1?.copyWith(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}