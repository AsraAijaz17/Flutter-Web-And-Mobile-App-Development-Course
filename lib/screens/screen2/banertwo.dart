import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/banner.dart';

class BanerTwo extends StatelessWidget {
  const BanerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: CustomBanner()),
    );
  }
}
