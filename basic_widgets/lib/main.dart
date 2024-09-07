import 'package:flutter/material.dart';

void main() => runApp(const BasicWidgets());

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Widgets',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widgets'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: TextButton(
          onPressed: (){},child: Text(
          'Click me'
        ),
          // style: TextButton.styleFrom(
          //   backgroundColor: Colors.black,
          //   foregroundColor: Colors.white,
          //   padding: EdgeInsets.all(26.9),
          //  // textStyle: TextStyle(fontSize: 40)
          //
          // ),
        )
      ),
    );
  }
}
