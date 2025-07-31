import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

class ImageController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  var imageFile = Rxn<File>();
  var imageUrl = "".obs;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
      await uploadToS3(imageFile.value!);
    }
  }

  Future<void> uploadToS3(File file) async {
    final fileName = basename(file.path);

   // final url = "https://<your-bucket-name>.s3.<region>.amazonaws.com/$fileName";

final url = "https://zulfi-image-bucket.s3.eu-north-1.amazonaws.com/$fileName";


    final dio = Dio();
    try {
      final response = await dio.put(
        url,
        data: file.openRead(),
        options: Options(
          headers: {
            "Content-Type": "image/jpeg",
            // If using pre-signed URL, no auth headers needed
          },
        ),
      );

      if (response.statusCode == 200) {
        imageUrl.value = url;
        Get.snackbar("Success", "Image uploaded!");
      } else {
        Get.snackbar("Error", "Upload failed");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Exception", "Upload Error: $e");
    }
  }
}
