import 'package:flutter/material.dart';
import 'package:sqlite_with_flutter/show_tasks_screen.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo',
      home: ShowTasksScreen(),
    );
  }
}