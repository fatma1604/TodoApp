import 'package:flutter/material.dart';
import 'package:todo_app/thems/colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: AppColor.blue, 
      // ignore: deprecated_member_use
      background: AppColor.pageColor, 
    ),
  );

  static final ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: AppColor.pageColor,
      // ignore: deprecated_member_use
      background: AppColor.primaryBackground 
    ),
  );
}
