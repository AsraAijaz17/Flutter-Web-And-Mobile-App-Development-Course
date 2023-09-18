import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 123,
      width: 269,
      // color: Color(0xffF9B023),
      decoration: BoxDecoration(
          color: Color(0xFFF9B023), borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 68,
            width: 68,
            color: Color(0xffF9B023),
            child: SvgPicture.asset("assets/images/img.svg"),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
              height: 110,
              width: 130,
              color: Color(0xffF9B023),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "50% OFF",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "on first 03 orders",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ))
        ],
      ),
    );

    //  Container(
    //   width: 268,
    //   height: 130,
    //   color: Color(0xffF9B023),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Container(
    //         margin: EdgeInsets.only(left: 20),
    //         child: Container(
    //           width: 68,
    //           height: 68,
    //           color: Color(0xffF9B023),
    //           child: SvgPicture.asset(
    //             "assets/images/img.svg",
    //             height: 68,
    //             width: 68,
    //           ),
    //         ),
    //       ),
    //       Container(
    //         width: 160,
    //         height: 130,
    //         color: Color(0xffF9B023),
    //         child: Container(
    //           margin: EdgeInsets.only(left: 20),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Get",
    //                 style: const TextStyle(fontSize: 20, color: Colors.white),
    //               ),
    //               Text(
    //                 "50% OFF",
    //                 style: TextStyle(
    //                     fontSize: 30,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.white),
    //               ),
    //               Text(
    //                 "on first 03 orders",
    //                 style: TextStyle(color: Colors.white, fontSize: 12),
    //               )
    //             ],
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
