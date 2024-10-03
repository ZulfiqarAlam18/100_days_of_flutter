import 'package:databases_with_flutter_sqlite/add_tasks.dart';
import 'package:databases_with_flutter_sqlite/delete_tasks.dart';
import 'package:databases_with_flutter_sqlite/view_tasks.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 // String title , des , date ,time , category;


  //constructor
  // HomePage({Key? key,
  //   required this.title,
  //   required this.des,
  //   required this.date,
  //   required this.time,
  //   required this.category,
  //
  // }) : super(key: key);

  const HomePage ({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? title , des , date ,time , category;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

        child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add), text: 'Add Task'),
              Tab(icon: Icon(Icons.delete), text: 'Delete Task'),
              Tab(icon: Icon(Icons.view_list), text: 'View Tasks'),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[50],
        body: TabBarView(
    children:[
       AddTaskScreen(),
       DeleteTaskScreen(),
       ViewTasks(),
    ]
    )

    ),
      );
  }
}
