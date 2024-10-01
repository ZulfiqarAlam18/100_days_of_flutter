import 'package:flutter/material.dart';


class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
            indicatorColor: Colors.white, // Indicator color (underline color)
            labelColor: Colors.white, // Selected tab text color
            unselectedLabelColor: Colors.grey, // Unselected tab text color
          ),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home Tab Content')),
            Center(child: Text('Search Tab Content')),
            Center(child: Text('Settings Tab Content')),
          ],
        ),
      ),
    );
  }
}
