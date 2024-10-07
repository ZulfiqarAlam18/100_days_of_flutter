import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_with_flutter/main.dart';
import 'package:sqlite_with_flutter/todo_model.dart';
import 'package:sqlite_with_flutter/db_helper.dart';


class ShowTasksScreen extends StatefulWidget{
  const ShowTasksScreen({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class  MyAppState extends State <ShowTasksScreen> {

  TodoDatabase db =  TodoDatabase();
  List <TaskModelClass> todos = [];
  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  void fetchTasks() async {
    final taskList = await db.getAllTodos();

    setState((){
      todos = taskList;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Here are your tasks'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todos.length,
          itemBuilder: (context,index){
        return ListTile(
          title: Text(todos[index].title),
          subtitle: Text(todos[index].des),
          leading: CircleAvatar(
            radius: 20,
            child: Text(index.toString()),
          ),
          trailing: IconButton(
            onPressed: (){
              deleteTodo(todos[index]);
            },
            icon: Icon(Icons.delete),
          ),
        );
      })
    );

  }

}