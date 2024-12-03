import 'package:flutter/material.dart';
import 'package:todo_app/core/images.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';
import 'package:todo_app/thems/colors.dart';
import 'package:todo_app/thems/icons.dart';
import 'package:todo_app/widgets/lisTitle.dart';
import 'package:todo_app/widgets/my_icon.dart';
import 'package:todo_app/widgets/my_text.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // İçeriği kaydırılabilir hale getirme
      child: Column(
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
                icon: const MyIcon(
                  icon: AppIcons.drawer,
                  size: 32,
                  color: AppColor.grey,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/drawer');
                },
                child: const MyIcon(
                  imageAsset: AppImage.icon,
                  size: 32,
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.grey,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: MyIcon(
                  imageAsset: AppImage.arrow,
                  size: 50,
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
              const Padding(
                padding: EdgeInsets.only(right: 0),
                child: MyIcon(
                  imageAsset: AppImage.gif,
                  size: 80,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MyIcon(
                    icon: AppIcons.kategori,
                    size: 40,
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: AppText.category,
                    style: AppTextTheme.appBarTitle(context),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MyIcon(
                    icon: AppIcons.cleandar,
                    size: 40,
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: AppText.calendar,
                    style: AppTextTheme.appBarTitle(context),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MyIcon(
                    icon: AppIcons.search,
                    size: 40,
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: AppText.search,
                    style: AppTextTheme.appBarTitle(context),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: AppColor.grey,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: MyIcon(
                  imageAsset: AppImage.bear,
                  size: 50,
                  color: Color.fromARGB(255, 189, 185, 185),
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
              const Padding(
                padding: EdgeInsets.only(right: 0),
                child: MyIcon(
                  imageAsset: AppImage.arrow1,
                  size: 50,
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
