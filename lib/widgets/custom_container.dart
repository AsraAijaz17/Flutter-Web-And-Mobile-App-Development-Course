import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 294,
      height: 203,
      color: Color(0xff2A4BA0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 137,
              width: 294,
              color: Color(0xff2A4BA0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 30, color: Color(0xffFAFBFD)),
                  children: [
                    TextSpan(
                      text: "Your holiday shopping delivered to Screen one ",
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.all(
                            4.0), // Adjust the padding as needed
                        child: SvgPicture.asset("assets/images/Emoji.svg"),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            height: 66,
            width: 272,
            color: Color(0xff2A4BA0),
            child: Text(
              "There's something for everyone                   to enjoy with Sweet Shop                         Favourites Screen 1",
              style: TextStyle(color: Color(0xffB2BBCE)),
            ),
          ),
        ],
      ),
    );
  }
}
