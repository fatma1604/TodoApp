import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/images.dart';
import 'package:todo_app/thems/colors.dart';

class AppIconTheme {
  AppIconTheme._();

  static IconButton category(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.format_list_bulleted),
      iconSize: 25.sp,
    );
  }

  static IconButton cleandar(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.calendar_month_outlined,
      ),
      iconSize: 25.sp,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  static IconButton  search(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons. search,
      ),
      iconSize: 25.sp,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
    static IconButton  drawer(BuildContext context) {
    return IconButton(
      icon: const Icon(
         Icons.menu_sharp,
      ),
      iconSize: 32.sp,
      onPressed: () {
         Navigator.pushNamed(context, '/drawer');
      },
    );
  }
   static IconButton icon(BuildContext context) {
  return IconButton(
    icon: Image.asset(
      AppImage.icon,
      width: 32.sp, 
   
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
      width: 40.sp, 
      height: 40.sp,
    ),
  );
}

 static Widget gif(BuildContext context) {
  return Container(
    child: Image.asset(
     AppImage.gif ,
      width: 60.sp, 
      color: AppColor.grey,
    
    ),
  );
}

 static Widget bear(BuildContext context) {
  return Container(
    child: Image.asset(
     AppImage.bear ,
      width: 60.sp, 
      color: AppColor.grey,
    
    ),
  );
}

 static Widget arrow2(BuildContext context) {
  return Container(
    child: Image.asset(
    AppImage.arrow1,
      width: 50.sp, 
      
    
    ),
  );
}




  
}
