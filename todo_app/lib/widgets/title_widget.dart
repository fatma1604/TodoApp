import 'package:flutter/material.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/widgets/IconTheme.dart';
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
            color: Colors.grey,
            thickness: 2,
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
          const SizedBox(height: 20),
          My_Listitle(), // Add the My_Listitle widget here
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

class My_Listitle extends StatelessWidget {
  const My_Listitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Home', style: TextStyle(color: Colors.blue)),
          tileColor: Colors.blue.shade100,
          trailing: const Icon(Icons.home, color: Colors.blue),
          onTap: () {
            print('Home clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Profile', style: TextStyle(color: Colors.green)),
          tileColor: Colors.green.shade100,
          trailing: const Icon(Icons.account_circle, color: Colors.green),
          onTap: () {
            print('Profile clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Notifications',
              style: TextStyle(color: Colors.orange)),
          tileColor: Colors.orange.shade100,
          trailing: const Icon(Icons.notifications, color: Colors.orange),
          onTap: () {
            print('Notifications clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Settings', style: TextStyle(color: Colors.purple)),
          tileColor: Colors.purple.shade100,
          trailing: const Icon(Icons.settings, color: Colors.purple),
          onTap: () {
            print('Settings clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Help', style: TextStyle(color: Colors.red)),
          tileColor: Colors.red.shade100,
          trailing: const Icon(Icons.help, color: Colors.red),
          onTap: () {
            print('Help clicked');
          },
        ),
      ],
    );
  }
}
//ff