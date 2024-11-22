import 'package:flutter/material.dart';
import 'package:todo_app/thems/colors.dart';

class AppTextTheme {
  //style
  AppTextTheme._();

  static TextStyle appBarTitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.dark
          ?  AppColor.divider
          :  Color.fromARGB(255, 11, 11, 11),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
