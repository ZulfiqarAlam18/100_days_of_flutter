import 'package:course_practice/api_integration/services/user_services.dart';
import 'package:get/get.dart';
import '../models/user_model.dart';

class UserController extends GetxController {
  var users = <User>[].obs;
  var isLoading = true.obs;
  var error = ''.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading.value = true;
      final result = await ApiService.fetchUsers();
      users.value = result;
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
