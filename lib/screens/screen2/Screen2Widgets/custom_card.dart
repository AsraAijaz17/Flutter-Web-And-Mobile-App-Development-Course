import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: 194,
      width: 128,
      color: Color(0xffF8F9FB),
      child: Column(children: [
        Container(
          color: Color(0xffF8F9FB),
          height: 97,
          child: SvgPicture.asset(
            "assets/images/CutLemon.svg",
            color: Color(0xffA1ABC0),
            width: 68,
            height: 68,
          ),
        ),
        Container(
          color: Color(0xffF8F9FB),
          height: 97,
          width: 128,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fresh Lemon",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Organic",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              // Text(
              //   "Organic",
              //   style: TextStyle(fontSize: 12),
              // ),
              ElevatedButton(
                  onPressed: () {},
                  // style: ElevatedButton.styleFrom(
                  //     // backgroundColor: Colors.white,
                  //     textStyle:
                  //         const TextStyle(fontSize: 20, color: Colors.black),
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 1, 1, 1))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Unit \$ 12"),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xff2A4BA0),
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          size: 10,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
