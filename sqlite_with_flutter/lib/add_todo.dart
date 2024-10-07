import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_with_flutter/main.dart';

class AddTasksScreen extends StatefulWidget{
  const AddTasksScreen({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class  MyAppState extends State <AddTasksScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Here are your tasks'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
              return ListTile(
                title: Text('Task Title'),
                subtitle: Text('Task des'),
                leading: CircleAvatar(
                  radius: 20,
                  child: Text(index.toString()),
                ),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.delete),
                ),
              );
            })
    );

  }

}