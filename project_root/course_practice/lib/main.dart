import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fastapi_integration/ui.dart' show StudentScreen;
//import 'get_post_practice/screens/student_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Changed from MaterialApp to GetMaterialApp
      title: 'Student Management App',


      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      //   appBarTheme: AppBarTheme(elevation: 4, centerTitle: true),
      //   cardTheme: CardTheme(
      //     elevation: 3,
      //     margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //   ),
      // ),


      home:  StudentScreen(),
      debugShowCheckedModeBanner: false,
      // GetX Configuration
      defaultTransition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    );
  }
}
