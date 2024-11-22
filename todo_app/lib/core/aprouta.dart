import 'package:flutter/material.dart';



final class AppRoute {
  const AppRoute._();

 
  static const String drawer = "/drawer";



  static Map<String, WidgetBuilder> get routes => {
  drawer: (context) => const Drawer(),
 // chatHome: (context) => ChatHome(),
 //photo: (context) => PhotoPicker(),
//favori: (context) => Favori(),
  };
}
