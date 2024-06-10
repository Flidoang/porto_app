// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DetailBumdesPage extends StatefulWidget {
  const DetailBumdesPage({Key? key}) : super(key: key);

  @override
  State<DetailBumdesPage> createState() => _DetailBumdesPageState();
}

class _DetailBumdesPageState extends State<DetailBumdesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
