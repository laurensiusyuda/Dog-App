// ignore_for_file: use_key_in_widget_constructors

import 'package:dog_app/Route/Route.dart';
import 'package:dog_app/Route/routeName.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// home routing
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Dog Lovers',
      initialRoute: RouteName.home,
      getPages: AppRoute.pages,
    );
  }
}
