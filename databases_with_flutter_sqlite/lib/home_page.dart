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
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        backgroundColor: Colors.teal[50],
        body: TabBarView(
    children:[
       AddTaskScreen(),
       DeleteTaskScreen(),
       ViewTasks(title: 'TASK1', des: 'It is description of this task . yes it is lenghty slakjfalskjflkasjflsakjflaskdfjlsakfj llksajdfla lkjdslkf kajdlfkja lkalfalk jldskjfla', date: 'RANDOM', time: 'NO TIME', category: 'URGENT'),
    ]
    ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(child: Text('Header'),decoration: BoxDecoration(
                  color: Colors.teal
                ),),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings,color: Colors.teal,),
                  onTap: (){},
                ),
          ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.people,color: Colors.teal,),
            onTap: (){},
          ),
          ListTile(
            title: Text('Contact Us'),
            leading: Icon(Icons.contact_mail,color: Colors.teal,),
            onTap: (){},
          ),
          ListTile(
            title: Text('Terms&Conditions'),
            leading: Icon(Icons.privacy_tip,color: Colors.teal,),
            onTap: (){},
          ),
                ListTile(
                  title: Text('Share'),
                  leading: Icon(Icons.share,color: Colors.teal,),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('Rate'),
                  leading: Icon(Icons.star,color: Colors.teal,),
                  onTap: (){},
                ),


              ],
            ),
          ),

    ),
      );
  }
}
