import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_with_flutter/main.dart';
import 'package:sqlite_with_flutter/show_tasks_screen.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class  MyAppState extends State <HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Add Task')),
            ElevatedButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context))=> ShowTasks());
            }, child: Text('View Tasks')),
            ElevatedButton(onPressed: (){}, child: Text('Delete All tasks')),

          ],
        ),
      ),
    );

  }

}