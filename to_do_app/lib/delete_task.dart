


import 'package:flutter/material.dart';

class DeleteTaskScreen extends StatefulWidget {
  @override
  _DeleteTaskScreenState createState() => _DeleteTaskScreenState();
}

class _DeleteTaskScreenState extends State<DeleteTaskScreen> {
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Task'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _deleteTask(index),
            ),
          );
        },
      ),
    );
  }
}
