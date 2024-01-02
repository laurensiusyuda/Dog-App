// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Text(
            "L",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            'Laurensius Yuda Wicaksono Nugroho',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          subtitle: Text(
            'Role : Pecinta Anjing',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
      ),
    );
  }
}
