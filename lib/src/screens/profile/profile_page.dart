// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/src/partials/thema.dart';

class ProfilePage extends StatefulWidget {
  final NotchBottomBarController? controller;

  const ProfilePage({
    super.key,
    this.controller,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundColor: brown2,
              radius: 60,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/rafli_pp.jpg',
                  fit: BoxFit.cover,
                  width: 115, // 2 * radius
                  height: 115, // 2 * radius
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            //
            Text(
              'Rafli Hendarsyah',
              style: GoogleFonts.montserrat(
                color: brown2,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              'Mobile Developer',
              style: GoogleFonts.montserrat(
                color: grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
