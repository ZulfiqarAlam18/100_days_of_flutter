import 'package:databases_with_flutter_sqlite/view_tasks.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {

  const AddTaskScreen({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AddTaskScreen> {
  final key = GlobalKey <FormState>();

  String? title, des , date , time , category ;
 // String title = '';
 // String  des  = '';
 // String date = '';
 // String time = '';
 // String category = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal[50],
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                children: [


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
                      des = value;
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
                      date = value;
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
                      time = value;
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
                      category = value;
                    },

                  ),
                  SizedBox(height:10),
                  // for button
                  ElevatedButton(onPressed: (){

                    if (key.currentState!.validate()){
                      key.currentState!.save();
                    }

                    ViewTasks(
                      title: title ?? '',
                      des: des ?? '',
                      date: date ?? '',
                      time: time ?? '',
                      category: category ?? '',
                    );


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
