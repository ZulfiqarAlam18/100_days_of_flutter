import 'package:flutter/material.dart';

void main() {
  runApp(const BasicWidgets());
}

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets',
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
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        color: Colors.teal,
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Bottom Sheet'),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Close'))
                            ],
                          ),
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(child: Text('This is body of app bar')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer'),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text('item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('item 2'),
              onTap: () {},
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search')
        ],
        onTap: (int index){},

      ),


    );
  }
}
