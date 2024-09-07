import 'package:flutter/material.dart';

void main() => runApp(const BasicWidgets());

class BasicWidgets extends StatelessWidget{
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Basic Widgets',
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  MyAppState createState() => MyAppState();

}
class MyAppState extends State <Home>{

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
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: 200,
          height: 200,
         // color: Colors.blue,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [ BoxShadow(
              blurRadius: 5,
              spreadRadius: 3,
              offset: Offset(0,3),
            ),]
          ),

          //child: ElevatedButton(onPressed: (){},child: Text('Press me'),),
          child: Text('Press me'),
        ),
      ),
    );

  }

}
