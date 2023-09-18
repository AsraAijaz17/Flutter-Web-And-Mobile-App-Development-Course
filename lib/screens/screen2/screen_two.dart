import 'package:flutter/material.dart';
import 'package:flutterscndpractice/widgets/custom_header_one.dart';

import 'Screen2Widgets/custom_card.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomHeaderOne(),
        Expanded(
          child: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 219, 197, 197),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // CustomBanner(),
                  // SizedBox(width: 20),
                  // CustomBanner(),
                  // SizedBox(width: 20),
                  // CustomBanner(),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                        CustomCard(),
                      ],
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
