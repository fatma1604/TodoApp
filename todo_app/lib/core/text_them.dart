import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle appBarTitle(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;

    return TextStyle(
      color: brightness == Brightness.dark
          ? AppColor.secondaryBackground
          : AppColor.primaryBackground,
      fontSize: 15.sp,
    );
  }

  static TextStyle today(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;

    return TextStyle(
      color: brightness == Brightness.dark
          ? AppColor.secondaryBackground
          : AppColor.primaryBackground,
    );
  }

  static TextStyle drawer(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
