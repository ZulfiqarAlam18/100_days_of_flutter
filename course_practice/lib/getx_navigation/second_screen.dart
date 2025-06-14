import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(); // Go back using GetX
          },
        ),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/third'); // Navigate using GetX
          },
          child: const Text("Go to Third Screen"),
        ),
      ),
    );
  }
}
