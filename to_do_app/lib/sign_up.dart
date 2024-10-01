import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<SignUpPage> {
  final key = GlobalKey<FormState>();
  String? name;
  String? mail;
  String? pass;
  String? no;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Enter Full Name:'),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Enter Gmail Address:'),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Enter WhatsApp Number:'),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Valid Mobile Number';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Enter Password'),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password must of at least 7 digits';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                if (key.currentState!.validate()){
                  key.currentState!.save();
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data Submitted')));
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
