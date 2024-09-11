import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  
  MyAppState createState() => MyAppState();
}

class MyAppState extends State <AddTaskScreen>{
  final _taskController = TextEditingController();
  List <String> tasks = [];

  void dispose(){
    _taskController.dispose();
    super.dispose();
  }
  void _addTask(){
    setState(() {
      tasks.add(_taskController.text);
      _taskController.clear();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Task Added')));
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD Tasks'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                labelText: 'Enter Task Decription',
                border: OutlineInputBorder(),
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: _addTask
                , child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}