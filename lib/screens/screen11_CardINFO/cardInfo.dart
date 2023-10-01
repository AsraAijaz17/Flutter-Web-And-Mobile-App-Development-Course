import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/custom_button.dart';
import '../screen12_OrdersScreen/ordersView.dart';

class CarfInformation extends StatefulWidget {
  final double total2;
  final double subtotal2;
  final double Delivery2;
  const CarfInformation({
    super.key,
    required this.total2,
    required this.subtotal2,
    required this.Delivery2,
  });

  @override
  State<CarfInformation> createState() => _CarfInformationState();
}

class _CarfInformationState extends State<CarfInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/images/whiteBack.svg",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
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
                  "Add Card",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Card Holder Name",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Card Number",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Exp Date",
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "CVC",
                        ),
                      ),
                    ),
                  ],
                ),
                // Text(" Total :${widget.total2}"),
                // Text(" SUbTotal :${widget.subtotal2}"),
                // Text(" Delivery :${widget.Delivery2}"),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 266,
            width: MediaQuery.sizeOf(context).width * 0.97,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 231, 233),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                color: Color(0xff616A7D), fontSize: 17),
                          ),
                          Spacer(),
                          Text("\$${widget.total2.toString()}",
                              style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Delivery",
                              style: TextStyle(
                                  color: Color(0xff616A7D), fontSize: 17)),
                          Spacer(),
                          Text("\$${widget.Delivery2}",
                              style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Total",
                              style: TextStyle(
                                  color: Color(0xff616A7D), fontSize: 17)),
                          Spacer(),
                          Text(
                            "\$${widget.subtotal2.toString()}",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomButton(
                    ButtonText: "Make Payment",
                    Width: 327,
                    Height: 56,
                    buttonColor: Color(0xff2A4BA0),
                    borderRadius: BorderRadius.circular(10),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderScreen()));
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
