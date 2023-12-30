// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Dog App',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            //profile picture
            Card(
              shadowColor: Colors.black,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'U',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    'Laurensius Yuda Wicaksono Nugroho',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Natus Vincere',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //widget handle data dari api
          ],
        ),
      ),
    );
  }
}
