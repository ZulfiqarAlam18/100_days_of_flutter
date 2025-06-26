import 'package:course_practice/api_integration/screens/user_screen.dart';
import 'package:course_practice/getx_navigation/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_navigation/home_screen.dart';
import 'getx_navigation/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'GetX Navigation Example',

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const UserScreen()),
        GetPage(name: '/second', page: () => const SecondScreen()),
        GetPage(name: '/third', page: () => const ThirdScreen()),
      ],


    );
  }

}
