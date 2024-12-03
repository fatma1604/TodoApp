import 'package:flutter/material.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/thems/colors.dart';
import 'package:todo_app/widgets/IconTheme.dart';
import 'package:todo_app/widgets/lisTitle.dart';
import 'package:todo_app/widgets/my_text.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          _buildRowWithIcons(context),
          const Divider(
            color: AppColor.grey,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          _buildTitleRow(context, AppText.habit, AppText.weaving),
          const SizedBox(height: 20),
          _buildIconTextRow(context),
          const Divider(
            color: AppColor.grey,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          _buildTitleRow(context, AppText.adding, AppText.weaving),
          const SizedBox(height: 20),
          My_Listitle(),
        ],
      ),
    );
  }

  Widget _buildRowWithIcons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppIconTheme.drawer(context),
        const SizedBox(width: 10),
        AppIconTheme.icon(context),
      ],
    );
  }

  Widget _buildTitleRow(
      BuildContext context, String firstText, String secondText) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
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

  Widget _buildIconTextRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconTextColumn(context, AppIconTheme.category, AppText.category),
        const SizedBox(width: 20),
        _buildIconTextColumn(context, AppIconTheme.cleandar, AppText.calendar),
        const SizedBox(width: 20),
        _buildIconTextColumn(context, AppIconTheme.search, AppText.search),
      ],
    );
  }

  Widget _buildIconTextColumn(
      BuildContext context, Widget Function(BuildContext) icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon(context),
        const SizedBox(height: 5),
        MyText(
          text: text,
          style: AppTextTheme.appBarTitle(context),
        ),
      ],
    );
  }
}
