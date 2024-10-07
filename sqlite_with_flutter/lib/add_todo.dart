import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_with_flutter/main.dart';

class AddTasksScreen extends StatefulWidget{
  const AddTasksScreen({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class  MyAppState extends State <AddTasksScreen> {
  final key = GlobalKey <FormState> ();

  String? title;
  String? des;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Here are your tasks'),
          centerTitle: true,
        ),
       body: Form(
         key: key,
         child: SingleChildScrollView(
           child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(
                   label: Text('Task Title'),
                   hintText: 'Enter Task Title',
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(
                       color: Colors.teal,
                       width: 2.0,
                     )
                   )
                 ),

                 validator: (value){
                   if ( value == null || value.isEmpty){
                     return 'Enter Task Title';
                   }
                   return null;
                 },
                 onSaved: (value){
                   title = value;
                 },
               ),
               SizedBox(height: 10,),
               TextFormField(
                 decoration: InputDecoration(
                     label: Text('Task Description'),
                     hintText: 'Enter Task Description',
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(
                           color: Colors.teal,
                           width: 2.0,
                         )
                     )
                 ),

                 validator: (value){
                   if ( value == null || value.isEmpty){
                     return 'Enter Task description';
                   }
                   return null;
                 },
                 onSaved: (value){
                   des = value;
                 },
               ),
               SizedBox(height: 10,),
               ElevatedButton(onPressed: (){
                 if (key.currentState!.validate()){
                   key.currentState!.save();
                 }
                 ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Task Sumbitted Successfully')));
               }, child: Text('Submit Task')),
               SizedBox(height: 10,),

             ],
           ),
         ),
       ),
    );

  }

}