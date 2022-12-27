import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kumparan_clone/src/common/colors.dart';


Future<dynamic> showToast({
  required String msg,
  Color? backgroundColor,
  Color? textColor,
  ToastGravity gravity = ToastGravity.CENTER,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: gravity,
    backgroundColor: backgroundColor ?? ColorLight.primary,
    textColor: textColor ?? Colors.white,
  );
}
