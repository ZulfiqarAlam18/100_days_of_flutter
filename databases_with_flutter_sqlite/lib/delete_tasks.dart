import 'package:flutter/material.dart';

class DeleteTaskScreen extends StatefulWidget {


  const DeleteTaskScreen({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DeleteTaskScreen> {

  String? title , des , date ,time , category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.teal[50],
        body: Padding(
          padding: EdgeInsets.all(8.0),

          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context,index) {
                return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: Colors.teal,
                            width: 2.0
                        )
                    ),
                    elevation: 12,
                    child: ListTile(
                        title: Text('Task $index',style: TextStyle(fontWeight: FontWeight.bold),),

                        leading: CircleAvatar(
                          radius: 20,
                          child: Text((index + 1).toString()),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: IconButton(onPressed: (){

                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  title: Text('Sure to Delete Task'),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.of(context).pop();
                                    }, child: Text('Go Back')),

                                    ElevatedButton(onPressed: (){}, child: const Text('Delete')),
                                  ],
                                  backgroundColor: Colors.teal[50],
                                );
                              });

                        },icon: Icon(Icons.delete),)
                        )
                    )

                );
              }  ),
        )


    );
  }
}
