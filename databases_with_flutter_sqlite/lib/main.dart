import 'package:flutter/material.dart';
import 'package:databases_with_flutter_sqlite/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakeIt',
      home:  HomePage(),
    );
  }
}
