// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutterscndpractice/widgets/custom_button.dart';

// class MyCart extends StatefulWidget {
//   final List items;
//   // const MyCart({super.key, required this.items}); before
//   const MyCart({Key? key, this.items = const []}) : super(key: key);

//   @override
//   State<MyCart> createState() => _CartViewScreenState();
// }

// class _CartViewScreenState extends State<MyCart> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(children: [
//             Container(
//               height: 270,
//               width: MediaQuery.sizeOf(context).width * 1,
//               color: Color(0xffFFC83A),
//             ),
//             Positioned(
//               bottom: 130,
//               left: 30,
//               child: Stack(children: [
//                 Container(
//                   height: 291,
//                   width: 260,
//                   color: Color(0xffFFC83A),
//                   child: Text(
//                     "#",
//                     style: TextStyle(
//                         fontSize: 300,
//                         fontWeight: FontWeight.w100,
//                         color: Color(0xffF9B023)),
//                   ),
//                 ),
//               ]),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 40, left: 20, right: 40),
//               child: Container(
//                   child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         child: Stack(children: [
//                           SvgPicture.asset(
//                             "assets/images/whiteBack.svg",
//                             height: 30,
//                             width: 30,
//                           ),
//                           Positioned(
//                             top: 10,
//                             left: 10,
//                             child: SvgPicture.asset(
//                               "assets/images/backarrow.svg",
//                               height: 10,
//                               width: 10,
//                             ),
//                           ),
//                         ]),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text(
//                         "Shopping Cart ",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.w400),
//                       ),
//                       Spacer(),
//                       Column(
//                         children: [
//                           SvgPicture.asset(
//                             "assets/images/curl.svg",
//                             height: 50,
//                             width: 86,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Row(
//                       children: [
//                         Spacer(),
//                         Text(
//                           "OFF!!",
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               )),
//             ),
//             Positioned(
//               top: 100,
//               left: 100,
//               child: Container(
//                 child: Text(
//                   "25%",
//                   style: TextStyle(
//                       fontSize: 130,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700),
//                 ),
//               ),
//             ),
//           ]),
//           Container(
//             height: 49,
//             width: MediaQuery.sizeOf(context).width * 1,
//             color: Color(0xffF9B023),
//             child: Center(
//                 child: Text(
//               "Use code #HalalFood at Checkouut",
//               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//             )),
//           ),
//           Expanded(
//             child: widget.items.isEmpty
//                 ? Center(child: Text("Cart is Empty"))
//                 : ListView.builder(
//                     itemCount: widget.items.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         tileColor: Colors.amber,
//                         leading: SvgPicture.asset(
//                             widget.items[index]["ProductImage"],
//                             width: 30, // Adjust the width as needed
//                             height: 30),
//                         title: Text("${widget.items[index]["ProductName"]}"),
//                         subtitle:
//                             Text("${widget.items[index]["ProductPrice"]}"),
//                         trailing: Wrap(
//                           children: [
//                             IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     widget.items[index]["quantity"] += 1;
//                                   });
//                                 },
//                                 icon: Icon(Icons.add)),
//                             Text(
//                               "${widget.items[index]["quantity"]}",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                             IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (widget.items[index]["quantity"] > 1) {
//                                       widget.items[index]["quantity"] -= 1;
//                                     } else {
//                                       widget.items.removeAt(index);
//                                     }
//                                   });
//                                 },
//                                 icon: Icon(Icons.remove)),
//                           ],
//                         ),
//                       );
//                     }),
//           ),
//           //---------------
//           Expanded(
//               child: Container(
//             height: 50,
//             width: MediaQuery.sizeOf(context).width * 0.97,
//             decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30))),
//             child: Column(
//               children: [
//                 Spacer(),
//                 CustomButton(
//                     ButtonText: "Proceed To Checkout",
//                     Width: 327,
//                     Height: 56,
//                     buttonColor: Color(0xff2A4BA0),
//                     borderRadius: BorderRadius.circular(10),
//                     textColor: Colors.white)
//               ],
//             ),
//           ))
//         ],
//       ),
//       //-----------------------------------------------
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutterscndpractice/screens/screen12_OrdersScreen/customOrderTile.dart';

// class prac extends StatelessWidget {
//   const prac({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CustomOrderTile(),
//       ),
//     );
//   }
// }
