import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/banner.dart';
import 'package:flutterscndpractice/widgets/custom_header_one.dart';

class ScrTwo extends StatefulWidget {
  const ScrTwo({super.key});

  @override
  State<ScrTwo> createState() => _ScrTwoState();
}

class _ScrTwoState extends State<ScrTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomHeaderOne(),
          //-----------------
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomBanner(),
                SizedBox(
                  width: 20,
                ),
                CustomBanner()
              ],
            ),
          )
        ],
      )),
    );
  }
}
