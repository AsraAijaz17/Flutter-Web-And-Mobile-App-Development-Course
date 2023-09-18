import 'package:flutter/material.dart';

class BanerTwo extends StatelessWidget {
  const BanerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        color: Colors.amber,
      )),
    );
  }
}
