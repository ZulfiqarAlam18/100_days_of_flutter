import 'package:flutter/material.dart';

class ShowStudentList extends StatelessWidget {
  final List<Map<String, String>> studentList;

  const ShowStudentList({Key? key, required this.studentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Data'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50],
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          final student = studentList[index];

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  color: Colors.teal,
                  width: 2,
                ),
              ),
              child: ListTile(
                title: Text(student['name']!),
                leading: CircleAvatar(
                  radius: 20,
                  child: Text((index + 1).toString()),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // Implement delete logic here
                  },
                  icon: const Icon(Icons.delete),
                ),
                onTap: () {
                  _customAlertBox(
                    context: context,
                    student: student,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _customAlertBox({required BuildContext context, required Map<String, String> student}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Student Data'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _buildInfoRow('Name', student['name']!),
                _buildInfoRow('Father\'s Name', student['f_name']!),
                _buildInfoRow('Age', student['age']!),
                _buildInfoRow('DOB', student['dob']!),
                _buildInfoRow('Gender', student['gender']!),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      children: [
        Text('$label: '),
        Text(value),
      ],
    );
  }
}
