// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:porto/src/screens/other/loading_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
