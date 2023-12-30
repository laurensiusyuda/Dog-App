// ignore_for_file: file_names
import 'package:dog_app/Route/routeName.dart';
import 'package:dog_app/View/homeScreen.dart';
import 'package:get/get.dart';

class AppRoute {
  static final pages = [
    // route to main
    GetPage(
      name: RouteName.home,
      page: () => HomeScreen(),
    ),
  ];
}
