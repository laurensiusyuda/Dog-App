// ignore_for_file: avoid_print

import 'package:dog_app/Model/dog.dart';
import 'package:dog_app/helper/static.dart';
import 'package:get/get.dart';

// Mengambil data dari API
class Service extends GetConnect {
  String content = "application/json";

  Future<List<Welcome>?> getData() async {
    try {
      // menggunakan metode get untuk mengambil data dari API
      var response = await get(Appstrings.URL, headers: {
        "Content-Type": content,
        "x-api-key": Appstrings.API_KEY,
      });

      if (response.status.code == 200) {
        final responseBody = response.body;
        print(responseBody);
        //melakukan check apakah response body termasuk list
        if (responseBody is List) {
          var data = List<Welcome>.from(
            responseBody.map((item) => Welcome.fromJson(item)),
          );
          print('Response Body: $data');
          return data;
        } else {
          //jika data bukan berbentuk list kembalikan nilai null
          print('Error: Response body is not an array');
          return null;
        }
      } else {
        print('Error Message: ${response.statusText}');
        print('Error: ${response.statusText}');
        return null;
      }
    } catch (e) {
      print('Error during data retrieval or parsing: $e');
      return null;
    }
  }
}
