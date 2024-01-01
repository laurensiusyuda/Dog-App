// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return GFCard(
      titlePosition: GFPosition.start,
      title: GFListTile(
        avatar: GFAvatar(
          backgroundColor: Colors.black,
          child: Text(
            'W',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              fontSize: 14,
              color: Colors.blue,
            )),
          ),
        ),
        title: Text(
          'Laurensius Yuda Wicaksono Nugroho',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        subTitle: Text(
          'Role : Pecinta Hewan',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      content: Text(
        "Selamat Datang Laurensius Yuda Wicaksono Nugroho",
        style: GoogleFonts.lato(
          textStyle: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      color: Colors.blueGrey,
    );
  }
}
