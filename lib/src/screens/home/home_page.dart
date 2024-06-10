// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/src/partials/thema.dart';

class HomePage extends StatefulWidget {
  final NotchBottomBarController? controller;

  const HomePage({
    super.key,
    this.controller,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
            expandedHeight: 120,
            elevation: 0,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/rafli.webp',
                fit: BoxFit.cover,
              ),
              stretchModes: [StretchMode.blurBackground],
              title: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.70),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft, // Posisi di tengah bawah
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Welcome!',
                            style: GoogleFonts.arimo(
                              fontSize: 20,
                              color: brown2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'My name is Rafli',
                            style: GoogleFonts.arimo(
                              fontSize: 16,
                              color: grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(25),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 8,
                  decoration: BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),

          //
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'My Project',
                style: GoogleFonts.arimo(
                  fontSize: 25,
                  color: grey2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //
          SliverToBoxAdapter(
            child: Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: 4,
                    onPageChanged: (value) {
                      setState(() {
                        curentSlide = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: SizedBox(
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                //
                                Image.asset(
                                  'assets/images/jerukbg.webp',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //
                // Dot Slider
                Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 4),
                          duration: Duration(milliseconds: 300),
                          width: curentSlide == index ? 25 : 13,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: curentSlide == index ? grey : white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 100),
              child: Column(
                children: [
                  //
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 15),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/images/jerukbg.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: yellow.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Text(
                                'Bumdes Application',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: black.withOpacity(0.7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Lihat',
                                  style: GoogleFonts.nunitoSans(color: grey2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ),

                  //
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 15),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/images/jerukbg.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: yellow.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Text(
                                'Perpustakaan Application',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: black.withOpacity(0.7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Lihat',
                                  style: GoogleFonts.nunitoSans(color: grey2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ),

                  //
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 15),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/images/jerukbg.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: yellow.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Text(
                                'Salon Application',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: black.withOpacity(0.7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Lihat',
                                  style: GoogleFonts.nunitoSans(color: grey2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
