// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dog_app/Controller/DogController.dart';
import 'package:dog_app/Widget/profileUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final DogController dogController = Get.put(DogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              ProfileUser(),
              const SizedBox(
                height: 20,
              ),
              Obx(() {
                if (dogController.isLoading.value) {
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  );
                } else if (dogController.dogData.isNotEmpty) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: dogController.dogData.length,
                      itemBuilder: (BuildContext context, index) {
                        var data = dogController.dogData[index];
                        return Card(
                          child: ListTile(
                            title: Text(
                              'Name Dog: ${data.name}',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Text('No data available');
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
