import 'package:flutter/material.dart';
import 'package:todo_app/core/images.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/thems/colors.dart';
import 'package:todo_app/widgets/my_text.dart';

class TitleWidget extends StatelessWidget {
  // ignore: use_super_parameters
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/drawer');
              },
              icon: Icon(Icons.home, size: 32, color: iconColor),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/drawer');
              },
              child: Image.asset(
                AppImage.icon,
                width: 32,
                height: 32,
              ),
            ),
          ],
        ),
        const Divider(
          color: AppColor.divider,
          thickness: 2,
          indent: 0,
          endIndent: 0,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                AppImage.arrow,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: AppText.habit,
                  style: AppTextTheme.appBarTitle(context),
                ),
                MyText(
                  text: AppText.weaving,
                  style: AppTextTheme.appBarTitle(context),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Image.asset(
                AppImage.gif,
                width: 80,
                height: 80,
              ),
            ),
          ],
        ),
        const Divider(
          color: AppColor.divider,
          thickness: 2,
          indent: 0,
          endIndent: 0,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                AppImage.bear,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: AppText.adding,
                  style: AppTextTheme.appBarTitle(context),
                ),
                MyText(
                  text: AppText.weaving,
                  style: AppTextTheme.appBarTitle(context),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Image.asset(
                AppImage.arrow1,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
