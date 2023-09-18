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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 20), // Add the desired space here
            child: CustomHeaderOne(),
          ),
          //-----------------
          //  SizedBox(
          //     height: 20,
          //   ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                //--------------------------------
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Recommended",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                //--------------------------------
              ],
            ),
          ),

          //----------------------------------------
        ],
      )),
    );
  }
}
