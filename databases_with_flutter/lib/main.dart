import 'package:flutter/material.dart';
import 'package:databases_with_flutter/home_screen.dart';

void main() {
  runApp(const StudentData());
}

class StudentData extends StatelessWidget {
  const StudentData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentData',
      home: HomeScreen(),

    );
  }
}
