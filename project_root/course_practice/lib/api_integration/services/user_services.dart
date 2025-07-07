// services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> fetchUsers() async {
    try {
      print('Making API request to: $url');
      final response = await http.get(Uri.parse(url));

      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        List jsonList = json.decode(response.body);
        print('Successfully parsed ${jsonList.length} users');
        return jsonList.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception(
          'Failed to load users. Status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('Error in fetchUsers: $e');
      throw Exception('Failed to load users: $e');
    }
  }
}
