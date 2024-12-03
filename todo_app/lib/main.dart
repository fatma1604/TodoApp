





// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/aprouta.dart';
import 'package:todo_app/core/theme.dart';
import 'package:todo_app/features/todo_app/todo_app.dart';



void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: AppTheme.lightMode,
        darkTheme: AppTheme.darkMode,
        themeMode: ThemeMode.system,
        routes: AppRoute.routes ,
      home:const ScreenUtilInit(designSize: Size(375, 812), child: TodoApp(),),
    );
  }
}
