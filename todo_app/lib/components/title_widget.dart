// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/components/IconTheme.dart';
import 'package:todo_app/components/customicon.dart';
import 'package:todo_app/components/lisTitle.dart';
import 'package:todo_app/components/my_text.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          _buildRowWithIcons(context),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          _buildTitleRow(context, AppText.habit, AppText.weaving),
          _buildIconTextRow(context),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          _buildTitleRowbottom(context, AppText.adding, AppText.weaving),
          const My_Listitle(),
          const Customicon()
        ],
      ),
    );
  }

  Widget _buildRowWithIcons(BuildContext context) {
    return Builder(
      builder: (BuildContext scaffoldContext) {
        return Row(
          children: [
            AppIconTheme.drawer(scaffoldContext),
            const SizedBox(width: 10),
            AppIconTheme.icon(context),
          ],
        );
      },
    );
  }

  Widget _buildTitleRow(
      BuildContext context, String firstText, String secondText) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: AppIconTheme.arrow(context),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: firstText,
              style: AppTextTheme.appBarTitle(context),
            ),
            MyText(
              text: secondText,
              style: AppTextTheme.appBarTitle(context),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(right: 0),
          child: AppIconTheme.gif(context),
        ),
      ],
    );
  }

  Widget _buildTitleRowbottom(
      BuildContext context, String firstText, String secondText) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: AppIconTheme.bear(context),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: firstText,
              style: AppTextTheme.appBarTitle(context),
            ),
            MyText(
              text: secondText,
              style: AppTextTheme.appBarTitle(context),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(right: 0),
          child: AppIconTheme.arrow2(context),
        ),
      ],
    );
  }

  Widget _buildIconTextRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconTextColumn(context, AppIconTheme.category),
        const SizedBox(width: 20),
        _buildIconTextColumn(context, AppIconTheme.cleandar),
        const SizedBox(width: 20),
        _buildIconTextColumn(context, AppIconTheme.search),
      ],
    );
  }

  Widget _buildIconTextColumn(
      BuildContext context, Widget Function(BuildContext) icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon(context),
        const SizedBox(height: 5),
      ],
    );
  }
}


