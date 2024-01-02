// ignore_for_file: avoid_print, file_names

import 'package:dog_app/Model/dog.dart';
import 'package:dog_app/Service/connect.dart';
import 'package:get/get.dart';

class DogController extends GetxController {
  var dogData = <Welcome>[].obs;
  final isLoading = false.obs;
  final cardLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    loadCardData();
  }

  //Card Loading
  Future<void> loadCardData() async {
    cardLoading.value = true;
    await Future.delayed(const Duration(seconds: 5));
    cardLoading.value = false;
  }

  //Get Data From Api
  Future<void> fetchData() async {
    try {
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
