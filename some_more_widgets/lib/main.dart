import 'package:flutter/material.dart';

void main() {
  runApp(const BasicWidgets());
}

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  // Define a GlobalKey to uniquely identify the Form widget
  final _formKey = GlobalKey<FormState>();

  // Define variables to hold input field values
  String? _name;
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign the GlobalKey to the Form widget
          child: Column(
            children: <Widget>[
              // TextFormField for Name
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              const SizedBox(height: 20),
              // TextFormField for Email
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
              const SizedBox(height: 40),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Process the form data (e.g., send to server)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form submitted successfully!')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
