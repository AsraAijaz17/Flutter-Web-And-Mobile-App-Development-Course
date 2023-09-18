import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/custom_card.dart';

import 'package:flutterscndpractice/screens/screen2/banertwo.dart';
import 'package:flutterscndpractice/screens/screen2/scrtwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomCard(),
    );
  }
}
