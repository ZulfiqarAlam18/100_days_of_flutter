import 'package:flutter/material.dart';

class ViewTasks extends StatelessWidget {
  final String title;
  final String des;
  final String date;
  final String time;
  final String category;

  const ViewTasks({
    Key? key,
    required this.title,
    required this.des,
    required this.date,
    required this.time,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Task'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.teal, width: 2.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title: $title',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10),

                // Handling long description using Flexible and SingleChildScrollView
                Text(
                  'Description:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 5),

                // Description section inside a scrollable area
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 150.0, // Adjust height as needed
                  ),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.teal, width: 1.5),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      des,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Text('Date: $date'),
                SizedBox(height: 5),
                Text('Time: $time'),
                SizedBox(height: 5),
                Text('Category: $category'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
