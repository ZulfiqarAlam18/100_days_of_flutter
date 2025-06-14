import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),


      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/second'); // Navigate using GetX
          },
          child: const Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
