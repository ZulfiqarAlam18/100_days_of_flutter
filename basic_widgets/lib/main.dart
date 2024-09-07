import 'package:flutter/material.dart';

void main() => runApp(const BasicWidgets());

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text('Scaffold Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Show the bottom sheet when the icon button is pressed
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.white,
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'This is the Bottom Sheet',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context); // Close the bottom sheet
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: const Text('Hello, Scaffold!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: const Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Implement navigation or action for Item 1
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Implement navigation or action for Item 2
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                // Implement navigation or action for Item 3
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.contact_mail)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded)),
            IconButton(onPressed: (){}, icon: Icon(Icons.contact_mail)),

          ],
        ),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       IconButton(
      //         icon: const Icon(Icons.home),
      //         onPressed: () {
      //           // Handle Home button press
      //           print('Home pressed');
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.search),
      //         onPressed: () {
      //           // Handle Search button press
      //           print('Search pressed');
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.person),
      //         onPressed: () {
      //           // Handle About Us button press
      //           print('About Us pressed');
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.contact_mail),
      //         onPressed: () {
      //           // Handle Contact Us button press
      //           print('Contact Us pressed');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle button press
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
    );
  }
}
