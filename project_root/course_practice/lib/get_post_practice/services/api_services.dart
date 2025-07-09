import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/student.dart';

class ApiService {
  // Multiple base URLs to try - emulator, network IP, and localhost
  static const List<String> _baseUrls = [
    'http://10.0.2.2:8000', // For Android emulator
    'http://10.11.72.148:8000', // For real device (your computer's IP)
    'http://localhost:8000', // For testing
  ];

  static String? _workingBaseUrl;

  // Find the working base URL
  static Future<String> _getWorkingBaseUrl() async {
    if (_workingBaseUrl != null) {
      return _workingBaseUrl!;
    }

    for (String baseUrl in _baseUrls) {
      try {
        print('Testing connection to: $baseUrl');
        final response = await http
            .get(
              Uri.parse('$baseUrl/students/'),
              headers: {'Content-Type': 'application/json'},
            )
            .timeout(Duration(seconds: 5));

        if (response.statusCode == 200 || response.statusCode == 500) {
          // Even 500 means we can reach the server
          print('✅ Connected to: $baseUrl');
          _workingBaseUrl = baseUrl;
          return baseUrl;
        }
      } catch (e) {
        print('❌ Failed to connect to: $baseUrl - $e');
        continue;
      }
    }

    throw Exception(
      'Could not connect to any backend server. Make sure your backend is running and accessible.',
    );
  }

  // Get all students
  static Future<List<Student>> getStudents() async {
    try {
      final baseUrl = await _getWorkingBaseUrl();
      print('🔄 Fetching students from: $baseUrl');

      final response = await http.get(
        Uri.parse('$baseUrl/students/'),
        headers: {'Content-Type': 'application/json'},
      );

      print('📡 Response status: ${response.statusCode}');
      print('📡 Response body: ${response.body}');

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((json) => Student.fromJson(json)).toList();
      } else {
        throw Exception(
          'Failed to load students. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('❌ Error fetching students: $e');
      rethrow;
    }
  }

  // Add a new student
  static Future<Student> addStudent(Student student) async {
    try {
      final baseUrl = await _getWorkingBaseUrl();
      print('🔄 Adding student to: $baseUrl');
      print('📤 Student data: ${student.toJson()}');

      final response = await http.post(
        Uri.parse('$baseUrl/students/'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(student.toJson()),
      );

      print('📡 Response status: ${response.statusCode}');
      print('📡 Response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Student.fromJson(json.decode(response.body));
      } else {
        throw Exception(
          'Failed to add student. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('❌ Error adding student: $e');
      rethrow;
    }
  }

  // Reset the working URL (useful for testing different environments)
  static void resetConnection() {
    _workingBaseUrl = null;
  }
}
