import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String baseUrl = 'http://127.0.0.1:8000'; // Replace with IP/domain if running on real device

  static Future<List<UserModel>> getUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  static Future<void> createUser(UserModel user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create user');
    }
  }
}
