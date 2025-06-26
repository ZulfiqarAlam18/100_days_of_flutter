import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/user_services.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<UserModel> users = [];
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      users = await ApiService.getUsers();
      setState(() {});
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> addUser() async {
    if (nameController.text.isEmpty || emailController.text.isEmpty) return;

    final newUser = UserModel(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
    );

    await ApiService.createUser(newUser);
    nameController.clear();
    emailController.clear();
    loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: addUser,
                  child: const Text("Add User"),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: users.isEmpty
                ? const Center(child: Text("No users found."))
                : ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
