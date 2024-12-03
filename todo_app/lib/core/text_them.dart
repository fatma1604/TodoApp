// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/thems/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle appBarTitle(BuildContext context) {
    return TextStyle(
      color: AppColor.primaryBackground,
      fontSize: 15.sp,
    );
  }
}
