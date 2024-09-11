import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const ToDo());
}
class ToDo extends StatelessWidget {
  const ToDo({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ToDo',
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  const Home({super.key});
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State <Home> {
  final _key = GlobalKey <FormState>();
  String? name;
  String? mail;

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text('MY Task Tracker'),
      centerTitle: true,
      backgroundColor: Colors.teal,

    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter Name'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Please Enter Name';
                }
                return null;
              },
              onSaved: (value){
                name = value;
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'Enter mail Address'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Enter A valid mail Address';
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              if (_key.currentState!.validate()){
                _key.currentState!.save();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form Submitted'),));
              }
            }, child: const Text('Sumbit'))
          ],
        ),
      ),
    ),
    );
  }
}
