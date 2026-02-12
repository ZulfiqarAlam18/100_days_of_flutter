import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final c = TextEditingController();

  String? data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: c,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
            onPressed: () async {
              var obj = await SharedPreferences.getInstance();
                              getData();


              setState(() {
                obj.setString('data', c.text.toString());
                



              });
            },
            child: Text('Save Data'),
          ),
          Text(data ?? 'No data yet'),
          Text('Debug text---------------------------')
        ],
      ),
    );
  }

  void getData() async {
    var obj = await SharedPreferences.getInstance();


    setState(() {
          data = obj.getString('data');
          

      
    });

  }
}
