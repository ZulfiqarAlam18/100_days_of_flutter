/// ✅ Flutter UI with Add, View, Update, Delete (CRUD) - Minimal Setup
/// File: main.dart

import 'package:course_practice/fastapi_integration/student_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


//const String baseUrl = "http://<YOUR-IP>:8000"; // Replace <YOUR-IP>

const String baseUrl = "http://10.11.72.172:8000";


// class Student {
//   final int id;
//   final String name;
//   final String rollNumber;
//   final int year;

//   Student({required this.id, required this.name, required this.rollNumber, required this.year});

//   factory Student.fromJson(Map<String, dynamic> json) {
//     return Student(
//       id: json['id'],
//       name: json['name'],
//       rollNumber: json['roll_number'],
//       year: json['year'],
//     );
//   }
// }

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  List<Student> students = [];
  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final yearController = TextEditingController();

  Future<void> fetchStudents() async {
    final response = await http.get(Uri.parse('$baseUrl/students/'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        students = List<Student>.from(data.map((x) => Student.fromJson(x)));
      });
    }
  }

  Future<void> addStudent() async {
    await http.post(
      Uri.parse('$baseUrl/students/'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': nameController.text,
        'roll_number': rollController.text,
        'year': int.parse(yearController.text),
      }),
    );
    fetchStudents();
  }

  Future<void> updateStudent(Student student) async {
    await http.put(
      Uri.parse('$baseUrl/students/${student.id}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': nameController.text,
        'roll_number': rollController.text,
        'year': int.parse(yearController.text),
      }),
    );
    fetchStudents();
  }

  Future<void> deleteStudent(int id) async {
    await http.delete(Uri.parse('$baseUrl/students/$id'));
    fetchStudents();
  }

  void showForm({Student? student}) {
    if (student != null) {
      nameController.text = student.name;
      rollController.text = student.rollNumber;
      yearController.text = student.year.toString();
    } else {
      nameController.clear();
      rollController.clear();
      yearController.clear();
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(student == null ? 'Add Student' : 'Update Student'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
            TextField(controller: rollController, decoration: InputDecoration(labelText: 'Roll Number')),
            TextField(controller: yearController, decoration: InputDecoration(labelText: 'Year'), keyboardType: TextInputType.number),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              student == null ? addStudent() : updateStudent(student);
            },
            child: Text(student == null ? 'Add' : 'Update'),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student CRUD')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text("${student.rollNumber} - ${student.year}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () => showForm(student: student)),
                IconButton(icon: Icon(Icons.delete), onPressed: () => deleteStudent(student.id)),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(),
        child: Icon(Icons.add),
      ),
    );
  }
}
