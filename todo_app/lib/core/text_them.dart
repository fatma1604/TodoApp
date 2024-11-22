// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/thems/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle appBarTitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.dark
          ?AppColor.grey
          : AppColor.primaryBackground,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle titles(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColor.grey
          :   AppColor.primaryBackground,
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );
  }
}
