import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/banner.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/custom_card.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: CustomCard()),
    );
  }
}
