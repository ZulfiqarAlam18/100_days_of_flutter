import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Your computer's IP address - update if needed
  static const String baseUrl = 'http://10.11.72.148:8000';
  
  // Test connection to backend
  static Future<bool> testConnection() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/health'),
        headers: {'Content-Type': 'application/json'},
      ).timeout(Duration(seconds: 5));
      return response.statusCode == 200;
    } catch (e) {
      print('Connection test failed: $e');
      return false;
    }
  }
  
  // Get all students
  static Future<List<Map<String, dynamic>>> getStudents() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/students/'),
        headers: {'Content-Type': 'application/json'},
      ).timeout(Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed to load students: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Add a new student
  static Future<Map<String, dynamic>> addStudent(String name, int marks) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/students/'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'name': name,
          'marks': marks,
        }),
      ).timeout(Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to add student: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Get student by ID
  static Future<Map<String, dynamic>> getStudent(String id) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/students/$id'),
        headers: {'Content-Type': 'application/json'},
      ).timeout(Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 404) {
        throw Exception('Student not found');
      } else {
        throw Exception('Failed to get student: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Update student
  static Future<Map<String, dynamic>> updateStudent(String id, String name, int marks) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/students/$id'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'name': name,
          'marks': marks,
        }),
      ).timeout(Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 404) {
        throw Exception('Student not found');
      } else {
        throw Exception('Failed to update student: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Delete student
  static Future<Map<String, dynamic>> deleteStudent(String id) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/students/$id'),
        headers: {'Content-Type': 'application/json'},
      ).timeout(Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 404) {
        throw Exception('Student not found');
      } else {
        throw Exception('Failed to delete student: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
