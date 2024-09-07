import 'package:flutter/material.dart';

void main() => runApp(const TabBarExample());

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // Initialize controller with 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of controller when the widget is destroyed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Example'),

        // bottom: TabBar(
        //   controller: _tabController,
        //   tabs: const [
        //     Tab(icon: Icon(Icons.home), text: "Home"),
        //     Tab(icon: Icon(Icons.search), text: "Search"),
        //     Tab(icon: Icon(Icons.person), text: "Profile"),
        //   ],
        //   indicatorColor: Colors.blue, // Customize tab indicator color
        // ),

        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.search),text: 'Search',),
            Tab(icon: Icon(Icons.person),text: 'person',),
            Tab(icon:Icon(Icons.contact_mail),text: 'Contact ',)
          ],
        ),


        backgroundColor: Colors.teal,
      ),
      // body: TabBarView(
      //   controller: _tabController,
      //   children: const [
      //     Center(child: Text('Home Content')),
      //     Center(child: Text('Search Content')),
      //     Center(child: Text('Profile Content')),
      //   ],
      // ),

      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Home'),
          Text('Search'),
          Text('profile'),
          Text('good'),
        ],
      ),

    );
  }
}
