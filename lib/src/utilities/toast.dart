import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:joblance_firebase/src/common/colors.dart';

Future<dynamic> showToast({
  required String msg,
  Color? backgroundColor,
  Color? textColor,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.CENTER,
    // backgroundColor: ColorLight.error ?? ColorLight.primary,
    backgroundColor: backgroundColor ?? ColorLight.primary,
    textColor: textColor ?? Colors.white,
  );
}
