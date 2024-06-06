// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:porto/src/screens/other/opening_page.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 5);

    return Timer(durasiSplash, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return OpeningPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(88, 64, 47, 1),
        body: Center(
          child: loading(),
        ),
      ),
    );
  }

  Widget loading() {
    return LoadingAnimationWidget.inkDrop(
      color: Color.fromRGBO(189, 171, 158, 1),
      size: 60,
    );
  }
}
