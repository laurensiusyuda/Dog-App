// ignore_for_file: avoid_print, file_names

import 'package:dog_app/Model/dog.dart';
import 'package:dog_app/Service/connect.dart';
import 'package:get/get.dart';

class DogController extends GetxController {
  var dogData = <Welcome>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      //mengambil semua data dari API Dog
      isLoading.value = true;
      var response = await Service().getData();
      if (response != null) {
        dogData.assignAll(response);
      } else {
        print('API response is null');
      }
    } catch (e) {
      print('Error during API request: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
