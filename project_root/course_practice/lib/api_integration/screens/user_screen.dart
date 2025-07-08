import 'package:course_practice/api_integration/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListScreen extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users (GET via GetX)')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (userController.error.isNotEmpty) {
          return Center(child: Text('Error: ${userController.error}'));
        }

        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return ListTile(
              leading: CircleAvatar(child: Text(user.id.toString())),
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        );
      }),
    );
  }
}
