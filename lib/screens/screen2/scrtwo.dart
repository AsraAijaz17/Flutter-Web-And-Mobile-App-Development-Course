import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/banner.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/custom_card.dart';
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
            child: SingleChildScrollView(
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCard(
                            ProductName: "Fresh Tomatos",
                            ProductPrice: "Unit 25",
                            ProductImage: "assets/images/tomato.svg"),
                        CustomCard(
                            ProductName: "Fresh Lemon",
                            ProductPrice: "Unit 10",
                            ProductImage: "assets/images/CutLemon.svg"),
                        CustomCard(
                            ProductName: "Potatos",
                            ProductPrice: "Unit 15",
                            ProductImage: "assets/images/Potato.svg"),
                        CustomCard(
                            ProductName: "Green Tea",
                            ProductPrice: "Unit 20",
                            ProductImage: "assets/images/GreenTea.svg"),

                        // CustomCard(),
                        // CustomCard(),
                        // CustomCard(),
                        // CustomCard(),
                      ],
                    ),
                  ),
                  //---------------------------------
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: Text(
                      "Deals On Fruits And Tea",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  //--------------------------------
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCard(
                            ProductName: "Bananas",
                            ProductPrice: "Unit 30",
                            ProductImage: "assets/images/banana.svg"),
                        CustomCard(
                            ProductName: "Grapes",
                            ProductPrice: "Unit 32",
                            ProductImage: "assets/images/grapes.svg"),
                        CustomCard(
                            ProductName: "Coffee Beans",
                            ProductPrice: "Unit 25",
                            ProductImage: "assets/images/coffee.svg"),
                        CustomCard(
                            ProductName: "Tea",
                            ProductPrice: "Unit 12",
                            ProductImage: "assets/images/tea.svg"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //----------------------------------------
        ],
      )),
    );
  }
}
