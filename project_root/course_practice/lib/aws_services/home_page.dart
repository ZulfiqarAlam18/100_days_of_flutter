// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Picker Demo',
//       home: ImagePickerExample(),
//     );
//   }
// }

// class ImagePickerExample extends StatefulWidget {
//   @override
//   _ImagePickerExampleState createState() => _ImagePickerExampleState();
// }

// class _ImagePickerExampleState extends State<ImagePickerExample> {
//   File? _imageFile;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//     final pickedFile = await _picker.pickImage(source: source);

//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Image Picker Example')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _imageFile != null
//                 ? Image.file(_imageFile!, width: 200, height: 200, fit: BoxFit.cover)
//                 : Text('No image selected'),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.image),
//               label: Text('Pick from Gallery'),
//               onPressed: () => _pickImage(ImageSource.gallery),
//             ),
//             ElevatedButton.icon(
//               icon: Icon(Icons.camera_alt),
//               label: Text('Take a Photo'),
//               onPressed: () => _pickImage(ImageSource.camera),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
