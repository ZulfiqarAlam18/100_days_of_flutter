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
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/second', page: () => const SecondScreen()),
      ],
    );
  }
}
