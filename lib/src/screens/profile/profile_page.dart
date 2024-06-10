// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/src/service/service.dart';
import 'package:porto/src/partials/thema.dart';
import 'package:icons_plus/icons_plus.dart';

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
    final UrlService urlController = UrlService();

    return Scaffold(
      backgroundColor: grey,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundColor: yellow,
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
                color: black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              'Mobile Developer',
              style: GoogleFonts.montserrat(
                color: grey2,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: brown2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      urlController.fetchGit();
                    },
                    icon: Icon(
                      EvaIcons.github_outline,
                      size: 50,
                      color: brown1,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: brown2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      urlController.fetchLinkedIn();
                    },
                    icon: Icon(
                      EvaIcons.linkedin_outline,
                      size: 50,
                      color: brown1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: brown2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      urlController.fethInstagram();
                    },
                    icon: Icon(
                      AntDesign.instagram_outline,
                      size: 50,
                      color: brown1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
