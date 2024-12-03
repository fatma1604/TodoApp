// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/images.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/core/colors.dart';

class AppIconTheme {
  AppIconTheme._();

  static TextButton category(BuildContext context) {
    return TextButton.icon(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.format_list_bulleted, color: AppColor.primaryBackground),
        label: Text(
          AppText.category,
          style: AppTextTheme.appBarTitle(context),
        ));
  }

  static TextButton cleandar(BuildContext context) {
    return TextButton.icon(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.calendar_today, color: AppColor.primaryBackground),
        label: Text(
          AppText.category,
          style: AppTextTheme.appBarTitle(context),
        ));
  }

  static TextButton search(BuildContext context) {
    return TextButton.icon(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.search, color: AppColor.primaryBackground),
        label: Text(
          AppText.category,
          style: AppTextTheme.appBarTitle(context),
        ));
  }

  static IconButton drawer(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.menu_sharp,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/drawer');
      },
    );
  }

  static IconButton icon(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        AppImage.icon,
        width: 25.sp,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/drawer');
      },
    );
  }

  static Widget arrow(BuildContext context) {
    return Container(
      child: Image.asset(
        AppImage.arrow,
        width: 35.sp,
      ),
    );
  }

  static Widget gif(BuildContext context) {
    return Container(
      child: Image.asset(
        AppImage.gif,
        width: 50.sp,
        color: AppColor.grey,
      ),
    );
  }

  static Widget bear(BuildContext context) {
    return Container(
      child: Image.asset(
        AppImage.bear,
        width: 50.sp,
        color: AppColor.grey,
      ),
    );
  }

  static Widget arrow2(BuildContext context) {
    return Container(
      child: Image.asset(
        AppImage.arrow1,
        width: 35.sp,
      ),
    );
  }
}
