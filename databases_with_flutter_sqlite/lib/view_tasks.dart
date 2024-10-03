import 'package:flutter/material.dart';

class ViewTasks extends StatefulWidget {
  String title, des, date, time, category;

  ViewTasks({
    required this.title,
    required this.des,
    required this.date,
    required this.time,
    required this.category,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ViewTasks> {
  //final String title , des , date ,time , category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.teal, width: 2.0)),
                  elevation: 12,
                  child: ListTile(
                    title: Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(widget.des),
                    leading: CircleAvatar(
                      radius: 20,
                      child: Text((index + 1).toString()),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Task Details',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Colors.teal[50],
                              content: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                  ),
                                  height: 200,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(36.0),
                                    child: Center(
                                      child: Column(children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Task Title:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(widget.title),
                                          ],
                                        ),
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Date:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(widget.date),
                                          ],
                                        ),
                                        Row(
                                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Time:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(widget.time),
                                          ],
                                        ),
                                        Row(
                                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Category:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(widget.category),
                                          ],
                                        ),
                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Des:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Card(
                                              child: Text(widget.des),
                                            )
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Edit Task')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Close'))
                              ],
                            );
                          });
                    },
                  ),
                );
              }),
        ));
  }
}
