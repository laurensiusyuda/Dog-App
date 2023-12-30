// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:dog_app/Model/dog.dart';
import 'package:dog_app/helper/static.dart';
import 'package:get/get.dart';

class Service extends GetConnect {
  // membuat  fungsi login untuk mengambil data dari API
  String Content = "application/json";
  final reqTimeout = const Duration(seconds: 30);

  Future<Welcome?> getData() async {
    try {
      //logic to connect api
      var response = await get(Appstrings.URL, headers: {
        "Content-Type": Content,
        "x-api-key": Appstrings.API_KEY,
      }).timeout(reqTimeout);
      if (response.status.code == 200) {
        print('Response Body: ${response.body}');
        return Welcome.fromJson(response.body[0]);
      } else {
        print('Error Message: ${response.statusText}');
        print('Error: ${response.statusText}');
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
