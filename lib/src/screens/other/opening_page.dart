// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/src/partials/thema.dart';
import 'package:porto/src/screens/other/navigation.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int curentSlide = 0;

  List<String> title = [
    'Welcome',
    'Enjoy The Experience',
    'Lets Findout What Inside ',
  ];

  List<String> subtittle = [
    'This is my personal Applications Portofolio',
    'This is my personal Applications Portofolio',
    'This is my personal Applications Portofolio',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rafli.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.65),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2),
              SizedBox(
                width: double.infinity,
                height: 130,
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        title: Text(
                          title[index],
                          style: GoogleFonts.karla(
                            fontSize: 25,
                            color: white,
                          ),
                        ),
                        subtitle: Text(
                          subtittle[index],
                          style: GoogleFonts.karla(
                            fontSize: 16,
                            color: grey,
                          ),
                        ),
                      ),
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      curentSlide = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 4),
                    duration: Duration(milliseconds: 300),
                    width: curentSlide == index ? 25 : 13,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: curentSlide == index ? brown1 : brown2,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),

              if (curentSlide == 2)
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 0, 70, 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigationPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mulai!!',
                          style: GoogleFonts.karla(
                            color: brown1,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: brown1,
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
