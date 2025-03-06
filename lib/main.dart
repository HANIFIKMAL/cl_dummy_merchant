import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: kFifthColor,
      home: Homepage(),
    );
  }
}
