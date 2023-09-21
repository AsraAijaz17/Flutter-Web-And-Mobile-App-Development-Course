// import 'package:flutter/material.dart';
// import 'package:flutterscndpractice/screens/screen6_Cart/my_cart.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutterscndpractice/screens/screen2/SCREENTWO.dart';


// class CustomHeaderOne extends StatelessWidget {
//   const CustomHeaderOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 252,
//           color: Color(0xff2A4BA0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Text(
//                       "Hey,Halal",
//                       style: TextStyle(
//                           color: Color(0xffF8F9FB),
//                           fontSize: 22,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                           // FaIcon(
//                           //   FontAwesomeIcons.bagShopping,
//                           //   color: Color(0xffF8F9FB),

//                           // ),

//                           ///---------------------------------------------
//                           ElevatedButton.icon(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Color(
//                                     0xff2A4BA0), // Specify the background color here
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>MyCart(items: cartItems) ));
//                               },
//                               icon: const FaIcon(
//                                 FontAwesomeIcons.cartShopping,
//                                 color: Colors.white,
//                               ),
//                               label: Text("Cart")))
//                 ],
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 child: const TextField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Color(0xff153075),
//                       labelText: "Search Products or Store",
//                       labelStyle: TextStyle(color: Color(0xff8891A5)),
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: Color(0xff8891A5),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                           borderSide: BorderSide(
//                             color: Color(0xff153075),
//                             width: 1.0,
//                           ))),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                           margin: EdgeInsets.only(left: 15),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "DELIVER TO",
//                                 style: TextStyle(
//                                     color: Color(0xff8891A5), fontSize: 11),
//                               ),
//                               Text(
//                                 "Green Way 3000, Sylhet",
//                                 style: TextStyle(
//                                     color: Color(0xffF8F9FB), fontSize: 14),
//                               )
//                             ],
//                           )),
//                     ],
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(right: 15),
//                     child: Column(
//                       children: [
//                         Text(
//                           "WITH IN",
//                           style:
//                               TextStyle(color: Color(0xff8891A5), fontSize: 11),
//                         ),
//                         Text(
//                           "1 Hour",
//                           style:
//                               TextStyle(color: Color(0xffF8F9FB), fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
