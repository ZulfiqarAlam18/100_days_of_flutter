import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
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

  const AddTaskScreen({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AddTaskScreen> {

  String? title , des , date ,time , category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal[50],
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  // 2 Text Form fields to be coded one for Task Title , second for task descrition along with teal borders , hinted texts validtors ,on saved  methods
                  // Here is just a sample code, you can add your own logic
                  // for title
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Task Title',

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Enter task title',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal,width: 2.0,),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    validator: (value){
                      if(value == null ) {
                        return 'Task Title is required';
                      }
                      return null;
                    },
                    onSaved: (value){
                      title = value;
                    },

                  ),
                  SizedBox(height:10),
                  // for description
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Task Description',

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Enter task description',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal,width: 2.0,),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    validator: (value){
                      if(value == null ) {
                        return 'Task Title is required';
                      }
                      return null;
                    },
                    onSaved: (value){
                      title = value;
                    },

                  ),
                  SizedBox(height:10),
                  // for date format
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date',

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Select Date',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal,width: 2.0,),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    validator: (value){
                      if(value == null ) {
                        return 'Task date is required';
                      }
                      return null;
                    },
                    onSaved: (value){
                      title = value;
                    },

                  ),
                  SizedBox(height:10),
                  // for time
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Time',

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Enter task Time',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal,width: 2.0,),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    validator: (value){
                      if(value == null ) {
                        return 'Task Time is required';
                      }
                      return null;
                    },
                    onSaved: (value){
                      title = value;
                    },

                  ),
                  // for category
                  SizedBox(height:10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Task Category',

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Enter task category',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal,width: 2.0,),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    validator: (value){
                      if(value == null ) {
                        return 'Task Category is required';
                      }
                      return null;
                    },
                    onSaved: (value){
                      title = value;
                    },

                  ),
                  SizedBox(height:10),
                  // for button
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Task Saved Successfully'),));
                  },child: Text('Add Task'),),






                  // Add other UI elements like date picker, time picker, dropdown, checkboxes etc.

                  // Here is just a sample code




                ],
              ),
            ),
          )),
    );
  }
}
