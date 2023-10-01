import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/screens/Screen13_Map/MapView.dart';
import 'package:flutterscndpractice/widgets/custom_button.dart';

class CustomOrderTile extends StatefulWidget {
  final String ProdName;
  final int ProdPrice;
  final String ProdImage;

  const CustomOrderTile({
    Key? key,
    required this.ProdName,
    required this.ProdPrice,
    required this.ProdImage,
  }) : super(key: key);

  @override
  _CustomOrderTileState createState() => _CustomOrderTileState();
}

class _CustomOrderTileState extends State<CustomOrderTile> {
  bool isExpanded = false; // Track the expansion state

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () {
            _toggleExpansion(); // Toggle the expansion on tap
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.97,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Container(
                      height: 48,
                      width: 48,
                      child: SvgPicture.asset(
                        widget.ProdImage,
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.ProdName,
                        style:
                            TextStyle(color: Color(0xff8891A5), fontSize: 14),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "\$${widget.ProdPrice}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text("02/10/2021"),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ID: #765433"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 221, 221),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        height: 26,
                        width: 74,
                        child: Center(child: Text("Success")),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        if (isExpanded) // Show this content if expanded

          Container(
            height: 200,
            width: 200,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 175,
                        height: 123,
                        color: Colors.white,
                        child: SvgPicture.asset(
                          "assets/images/truck.svg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text("Meet Our Rider, Rakib")
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Parcel",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("is on the way",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 13,
                      ),
                      CustomButton(
                          ButtonText: "Track Order",
                          Width: 115,
                          Height: 56,
                          buttonColor: Color(0xff2A4BA0),
                          borderRadius: BorderRadius.circular(10),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapViewScreen()));
                          }),
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
