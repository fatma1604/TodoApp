import 'package:flutter/material.dart';
import 'package:todo_app/components/IconTheme.dart';
import 'package:todo_app/core/colors.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';

class My_Listitle extends StatelessWidget {
  const My_Listitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text(
              AppText.today,
              style: AppTextTheme.today(context), // Removed const here
            ),
            tileColor: AppColor.listitle,
            trailing: AppIconTheme.home(context),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text(
              AppText.tomorrow,
              style: AppTextTheme.today(context), // Removed const here
            ),
            tileColor: AppColor.listitle1,
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.secondaryBackground,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/tOMORROW');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text(
              AppText.week,
              style: AppTextTheme.today(context), // Removed const here
            ),
            tileColor: AppColor.amber,
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.secondaryBackground,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/WEEK');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text(
              AppText.month,
              style: AppTextTheme.today(context), // Removed const here
            ),
            tileColor: AppColor.green,
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.secondaryBackground,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/bu');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text(
              AppText.latter,
              style: AppTextTheme.today(context), // Removed const here
            ),
            tileColor: AppColor.pink,
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.secondaryBackground,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/bu');
            },
          ),
        ],
      ),
    );
  }
}
