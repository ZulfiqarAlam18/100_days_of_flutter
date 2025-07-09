import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/student.dart';
import '../services/api_services.dart';

class StudentController extends GetxController {
  // Observable variables
  var students = <Student>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  // Form controllers
  final nameController = TextEditingController();
  final marksController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    loadStudents();
  }

  @override
  void onClose() {
    nameController.dispose();
    marksController.dispose();
    super.onClose();
  }

  // Load all students from backend
  Future<void> loadStudents() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final data = await ApiService.getStudents();
      students.value = data;

      if (students.isEmpty) {
        Get.snackbar(
          'Info',
          'No students found. Add your first student!',
          backgroundColor: Colors.blue.withOpacity(0.1),
          colorText: Colors.blue,
        );
      }
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to load students: $e',
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // Add a new student
  Future<bool> addStudent() async {
    try {
      // Validate input
      if (nameController.text.trim().isEmpty) {
        Get.snackbar(
          'Validation Error',
          'Student name cannot be empty',
          backgroundColor: Colors.orange.withOpacity(0.1),
          colorText: Colors.orange,
        );
        return false;
      }

      final marks = int.tryParse(marksController.text);
      if (marks == null || marks < 0 || marks > 100) {
        Get.snackbar(
          'Validation Error',
          'Marks must be a number between 0 and 100',
          backgroundColor: Colors.orange.withOpacity(0.1),
          colorText: Colors.orange,
        );
        return false;
      }

      isLoading.value = true;
      errorMessage.value = '';

      final newStudent = Student(
        name: nameController.text.trim(),
        marks: marks,
      );

      await ApiService.addStudent(newStudent);

      // Clear form
      nameController.clear();
      marksController.clear();

      // Refresh the list
      await loadStudents();

      Get.snackbar(
        'Success',
        'Student "${newStudent.name}" added successfully!',
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green,
      );

      return true;
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to add student: $e',
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
      );
      return false;
    } finally {
      isLoading.value = false;
    }
  }

  // Refresh students list
  Future<void> refreshStudents() async {
    ApiService.resetConnection(); // Reset connection to try different URLs
    await loadStudents();
  }
}
