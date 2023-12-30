// ignore_for_file: avoid_print, file_names

import 'package:dog_app/Model/Dog.dart';
import 'package:get/get.dart';

class DogContrroler extends GetxController {
  var dogData = <Welcome>[].obs;
  final isLoading = true.obs;

  //controller to handle data from dog data
  Future<void> fecthdata() async {
    try {
      isLoading(true);
    } catch (e) {
      print(e);
    }
  }
}
