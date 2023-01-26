import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kumparan_clone/src/common/const.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.label,
    this.labelLoading,
    this.color,
    this.textColor,
    this.child,
    required this.onTap,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 47,
    this.labelSize,
    this.margin,
    this.elevation,
  });

  final Widget? child;
  final String? label;
  final String? labelLoading;
  final Color? color;
  final Color? textColor;
  final void Function()? onTap;
  final bool isLoading;
  final double width;
  final double height;
  final double? labelSize;
  final double? elevation;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: (isLoading == true) ? () {} : onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? theme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          elevation: elevation,
        ),
        child: (isLoading == true)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SpinKitThreeBounce(
                    size: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    labelLoading ?? '',
                    style: theme.textTheme.button,
                  )
                ],
              )
            : (label == '' || label == null)
                ? child
                : Text(
                    label ?? '',
                    style: theme.textTheme.button?.copyWith(
                      fontSize: labelSize,
                      color: textColor,
                    ),
                  ),
      ),
    );
  }
}
