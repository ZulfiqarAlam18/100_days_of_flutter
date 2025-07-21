import 'dart:convert';
import 'package:http/http.dart' as http;
import 'student_model.dart';

//const String baseUrl = "http://<YOUR-IP>:8000"; // Replace with your IP
const String baseUrl = "http://10.11.72.148:8000";


class StudentService {

  Future<List<Student>> fetchStudents() async {
    final response = await http.get(Uri.parse('$baseUrl/students/'));
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((json) => Student.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load students');
    }
  }

  Future<void> addStudent(Student student) async {
    await http.post(
      Uri.parse('$baseUrl/students/'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(student.toJson()),
    );
  }

  Future<void> updateStudent(Student student) async {
    await http.put(
      Uri.parse('$baseUrl/students/${student.id}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(student.toJson()),
    );
  }

  Future<void> deleteStudent(int id) async {
    await http.delete(Uri.parse('$baseUrl/students/$id'));
  }
}
