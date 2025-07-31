import 'package:course_practice/aws_services/aws_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageView extends StatelessWidget {
  final controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AWS S3 Image Picker')),
      body: Center(
        child: Obx(() {
          if (controller.imageUrl.value != "") {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(controller.imageUrl.value, width: 200, height: 200),
                SizedBox(height: 20),
              ],
            );
          } else {
            return Text("No image uploaded yet");
          }
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "gallery",
            child: Icon(Icons.image),
            onPressed: () => controller.pickImage(ImageSource.gallery),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "camera",
            child: Icon(Icons.camera_alt),
            onPressed: () => controller.pickImage(ImageSource.camera),
          ),
        ],
      ),
    );
  }
}
