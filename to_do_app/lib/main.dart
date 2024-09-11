import 'package:flutter/material.dart';
import 'add_task.dart';
import 'delete_task.dart';
import 'view_tasks.dart';

void main() {
  runApp(const ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo',
      home: const Home(), // Sets the home screen directly
      routes: {
        '/add': (context) => AddTaskScreen(),
        '/delete': (context) => DeleteTaskScreen(),
        '/view': (context) => ViewTasksScreen(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/add'),
              child: const Text('Add Task'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/delete'),
              child: const Text('Delete'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/view'),
              child: const Text('View Tasks'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
              DrawerHeader(
                child: const Text('Drawer'),
                decoration: BoxDecoration(color: Colors.teal),
              ),
              ListTile(
                title: Text('Item1'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ListTile(
              title: Text('Item2'),
              onTap: (){
                Navigator.pop(context);},
            )
            ],
          ),
        ),

    );
  }
}
