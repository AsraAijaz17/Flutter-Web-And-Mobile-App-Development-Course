import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/screens/BottomNavBar/bottomNavBar.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_container.dart';

class ScreenOneContent extends StatelessWidget {
  const ScreenOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomContainer(),
          SvgPicture.asset(
            "assets/images/img.svg",
            height: 129,
            width: 129,
          ),
          
          Container(
            width: 253,
            height: 70,
            color: Color(0xff2A4BA0),
            child: CustomButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                ButtonText: "Get Started",
                Width: 253,
                Height: 70,
                buttonColor: Color(0xffFAFBFD),
                borderRadius: BorderRadius.circular(20),
                textColor: Color(0xff1E222B)),
          )
        ],
      ),
    );
  }
}
