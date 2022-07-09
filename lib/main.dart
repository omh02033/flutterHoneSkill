import 'package:flutter/material.dart';
import 'package:flutterlayout/binding/main_screen_binding.dart';
import 'package:flutterlayout/screens/home.dart';
import 'package:flutterlayout/screens/subscreens/my_location.dart';
import 'package:flutterlayout/themes/color_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home(), binding: MainPageBinding()),
        GetPage(name: '/myLocation', page: () => MyLocationPage()),
      ],
    );
  }
}
