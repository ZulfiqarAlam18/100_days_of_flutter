import 'package:flutter/material.dart';
import 'add_task.dart';
import 'delete_task.dart';
import 'view_tasks.dart';
import 'demo.dart';
import 'sign_up.dart';
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
        'add': (context) => AddTaskScreen(),
        'delete': (context) => DeleteTaskScreen(),
        'view': (context) => ViewTasksScreen(),
        'demo': (context) => Demo(),
        'signup': (context) => SignUpPage(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ToDo', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add), text: 'Add'),
              Tab(icon: Icon(Icons.delete), text: 'Delete'),
              Tab(icon: Icon(Icons.view_list), text: 'View'),
            ],
            indicatorColor: Colors.white, // Color of the tab indicator
            labelColor: Colors.white, // Color of the selected tab text
            unselectedLabelColor: Colors.grey, // Color of the unselected tab text
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, 'signup');
            }, icon: Icon(Icons.login,))
          ],
        ),
        body: TabBarView(
          children: [
            AddTaskScreen(), // Corresponds to the 'Add' tab
            DeleteTaskScreen(), // Corresponds to the 'Delete' tab
            ViewTasksScreen(), // Corresponds to the 'View' tab
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: const Text('Drawer',style: TextStyle(color: Colors.white),),
                decoration: BoxDecoration(color: Colors.teal),
              ),
              ListTile(
                title: Text('About us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Help'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}





