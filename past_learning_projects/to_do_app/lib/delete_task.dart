import 'package:flutter/material.dart';

class DeleteTaskScreen extends StatefulWidget {

  MyAppState createState() => MyAppState();
}

class MyAppState extends State <DeleteTaskScreen>{
  List <String> tasks = ['Task1','Task2','Task3'];
  String count ='';

  void _deleteTask(int index){
    setState(() {
      count = (index+1).toString();
      tasks.removeAt(index);
      int c = index+1;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Task number $c Deleted')));
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Tasks'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: tasks.length,itemBuilder: (context,index){
        return ListTile(
          title: Text(tasks[index]),
          //subtitle: Text(tasks[index]),
          trailing: IconButton(onPressed:() => _deleteTask(index), icon: Icon(Icons.delete)),
        );
      })
    );
  }
}












