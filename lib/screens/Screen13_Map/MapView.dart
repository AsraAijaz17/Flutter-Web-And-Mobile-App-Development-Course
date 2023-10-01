import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapViewScreen extends StatefulWidget {
  const MapViewScreen({super.key});

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              // color: Colors.green,
              width: MediaQuery.sizeOf(context).width * 1,
              height: 500,
              child: Center(
                child: Stack(children: [
                  Container(
                    height: 500,
                    // width: 300,
                    width: MediaQuery.sizeOf(context).width * 1,
                    child: SvgPicture.asset(
                      "assets/images/map.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 81,
                    // width: 300,
                    width: MediaQuery.sizeOf(context).width * 1,
                    color: Colors.white,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(children: [
                              SvgPicture.asset(
                                "assets/images/whiteBack.svg",
                                height: 40,
                                width: 40,
                                color: Color.fromARGB(255, 232, 233, 235),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                child: SvgPicture.asset(
                                  "assets/images/backarrow.svg",
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 81,
                      // width: 300,
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 230, 233),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 30,
                              width: 30,
                            ),
                            //  FaIcon(
                            //   FontAwesomeIcons.personRifle,
                            //   color: Colors.white,
                            // ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delivery Man",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text("Rakibul Hassan",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff2A4BA0),
                            child: FaIcon(
                              FontAwesomeIcons.solidMessage,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),

          // SizedBox(
          //   height: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: Container(
          //     height: 180,
          //     width: 300,
          //     color: Colors.white,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Row(
          //           children: [
          //             FaIcon(FontAwesomeIcons.clock),
          //             SizedBox(
          //               width: 20,
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   "Delivery In",
          //                   style: TextStyle(
          //                       fontSize: 17, color: Color(0xff616A7D)),
          //                 ),
          //                 Text("25 Min",
          //                     style: TextStyle(
          //                         fontSize: 17,
          //                         color: Colors.black,
          //                         fontWeight: FontWeight.w600)),
          //               ],
          //             )
          //           ],
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         Row(
          //           children: [
          //             FaIcon(FontAwesomeIcons.locationDot),
          //             SizedBox(
          //               width: 20,
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text("Delivery Address",
          //                     style: TextStyle(
          //                         fontSize: 17, color: Color(0xff616A7D))),
          //                 Text("37 New line, Sunamganj",
          //                     style: TextStyle(
          //                         fontSize: 17,
          //                         color: Colors.black,
          //                         fontWeight: FontWeight.w600)),
          //               ],
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Spacer(),
          // Container(
          //   height: 100,
          //   width: MediaQuery.sizeOf(context).width * 0.98,
          //   decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 221, 219, 219),
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           topRight: Radius.circular(30))),
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Text("Order Details",
          //           style: TextStyle(
          //               fontSize: 17,
          //               color: Colors.black,
          //               fontWeight: FontWeight.w600)),
          //       Text("(ID: #765433)")
          //     ],
          //   ),
          // )
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Container(
                  height: 200,
                  width: 300,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.clock),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery In",
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xff616A7D)),
                              ),
                              Text("25 Min",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.locationDot),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Delivery Address",
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff616A7D))),
                              Text("37 New line, Sunamganj",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //------------------------------
              Spacer(),
              Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width * 0.98,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 219, 219),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Order Details",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text("(ID: #765433)")
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
