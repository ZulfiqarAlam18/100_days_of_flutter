import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FormWidget());
}

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormWidget',
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  final _key = GlobalKey<FormState>();
  String? _name;
  String? _mail;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Enter name';
              }
                return null;
    },
                onSaved: (value){
                  _name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter Mail/Email Address'),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Enter a Valid mail address';
                  }
                  return null;
                },
                onSaved: (value){
                  _mail = value;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if (_key.currentState!.validate()){
                  _key.currentState!.save();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form Submitted')));
                }
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
