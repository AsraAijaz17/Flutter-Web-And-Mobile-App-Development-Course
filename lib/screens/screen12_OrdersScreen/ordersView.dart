import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/screens/screen12_OrdersScreen/customOrderTile.dart';

import '../../DATA/cart.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, bottom: 4),
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
                        color: Color.fromARGB(255, 232, 233, 235),
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
                  "Orders",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return CustomOrderTile(
                      ProdName: cart[index]["ProductName"],
                      ProdPrice: cart[index]["ProductPrice"],
                      ProdImage: cart[index]["ProductImage"]);
                }),
          )
        ],
      ),
    ));
  }
}
