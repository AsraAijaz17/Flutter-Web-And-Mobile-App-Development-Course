import 'package:flutter/material.dart';
import 'package:flutterscndpractice/DATA/favouriteList.dart';
import 'package:flutterscndpractice/screens/screen2/Screen2Widgets/banner.dart';
import 'package:flutterscndpractice/widgets/custom_header_one.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../DATA/Deals.dart';
import '../../DATA/cart.dart';
import '../../DATA/product_list.dart';
import '../screen6_Cart/my_cart.dart';
import 'Screen2Widgets/custom_card.dart';

class ScreenTwoView extends StatefulWidget {
  const ScreenTwoView({super.key});

  @override
  State<ScreenTwoView> createState() => _ScreenTwoViewState();
}

class _ScreenTwoViewState extends State<ScreenTwoView> {
  List cartItems = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Padding(
        //   padding: EdgeInsets.only(bottom: 20), // Add the desired space here
        //   child: CustomHeaderOne(),
        // )

        //-----------------Header------------------------------
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Container(
            height: 252,
            color: Color(0xff2A4BA0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Hey,Halal",
                        style: TextStyle(
                            color: Color(0xffF8F9FB),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            // FaIcon(
                            //   FontAwesomeIcons.bagShopping,
                            //   color: Color(0xffF8F9FB),

                            // ),

                            ///---------------------------------------------
                            // ElevatedButton.icon(
                            //     style: ElevatedButton.styleFrom(
                            //       primary: Color(
                            //           0xff2A4BA0), // Specify the background color here
                            //     ),
                            //     onPressed: () {
                            //       Navigator.push(
                            //           context,
                            //           MaterialPageRoute(
                            //               builder: (context) =>
                            //                   MyCart(items: cartItems)));
                            //     },
                            //     icon: const FaIcon(
                            //       FontAwesomeIcons.cartShopping,
                            //       color: Colors.white,
                            //     ),
                            //     label: Text("Cart")))

                            Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xff2A4BA0), // Specify the background color here
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyCart(items: cart),
                                  ),
                                );
                                setState(() {});
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.cartShopping,
                                color: Colors.white,
                              ),
                              label: Text("Cart"),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 12, // Adjust the radius as needed
                              child: Text(
                                cart.length.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff153075),
                        labelText: "Search Products or Store",
                        labelStyle: TextStyle(color: Color(0xff8891A5)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff8891A5),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(
                              color: Color(0xff153075),
                              width: 1.0,
                            ))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DELIVER TO",
                                  style: TextStyle(
                                      color: Color(0xff8891A5), fontSize: 11),
                                ),
                                Text(
                                  "Green Way 3000, Sylhet",
                                  style: TextStyle(
                                      color: Color(0xffF8F9FB), fontSize: 14),
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: const Column(
                        children: [
                          Text(
                            "WITH IN",
                            style: TextStyle(
                                color: Color(0xff8891A5), fontSize: 11),
                          ),
                          Text(
                            "1 Hour",
                            style: TextStyle(
                                color: Color(0xffF8F9FB), fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

        //---------------------------Header------------------------------
        //-----
        //------
        //-----
        //-----------------------Expanded------------------------------
        //---------------------Orange Banner-----------------------

        Expanded(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CustomBanner(),
                      SizedBox(
                        width: 20,
                      ),
                      CustomBanner()
                    ]),
              ),

              //---------------Orange Banner-----------------------

              //---------------Text And Cards-----------------------

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 35),
                ),
                //---------------------------------------------------------------------
              ),
              Container(
                height: 220,
                color: const Color.fromARGB(255, 246, 246, 244),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productData.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        ProductName:
                            productData[index]["ProductName"].toString(),
                        ProductPrice:
                            "\$${productData[index]["ProductPrice"].toString()}",
                        ProductImage: productData[index]["ProductImage"],
                        IcononPressed: () {
                          setState(() {
                            if (productData[index]["isFav"] == true) {
                              productDataTwo[index]["isFav"] = false;

                              wishlist.remove(productData[index]);
                              print(wishlist);
                            } else {
                              productData[index]["isFav"] = true;
                              wishlist.add(productData[index]);
                              print(wishlist);
                            }
                          });
                        },
                        Iconcolor: productData[index]["isFav"] == true
                            ? Colors.red
                            : Colors.grey,
                        press: () {
                          setState(() {
                            // Find the index of the selected item in cartItems
                            int cartIndex = cart.indexWhere((item) =>
                                item["ProductName"] ==
                                productData[index]["ProductName"]);

                            if (cartIndex != -1) {
                              // If item is already in cart, increase its quantity
                              cart[cartIndex]["quantity"] += 1;
                            } else {
                              // If item is not in cart, add it with quantity 1
                              Map<String, dynamic> newItem =
                                  Map.from(productData[index]);
                              newItem["quantity"] = 1;
                              cart.add(newItem);
                            }

                            print(cart);
                          });

//=------------------------------------------------------------------------------
                        },
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                child: Text(
                  "Deals On Fruits And Tea",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: 220,
                color: const Color.fromARGB(255, 239, 239, 236),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productDataTwo.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        ProductName:
                            productDataTwo[index]["ProductName"].toString(),
                        ProductPrice:
                            "\$${productDataTwo[index]["ProductPrice"].toString()}",
                        ProductImage: productDataTwo[index]["ProductImage"],
                        IcononPressed: () {
                          setState(() {
                            if (productDataTwo[index]["isFav"] == true) {
                              productDataTwo[index]["isFav"] = false;

                              wishlist.remove(productDataTwo[index]);
                              print(wishlist);
                            } else {
                              productDataTwo[index]["isFav"] = true;
                              wishlist.add(productDataTwo[index]);
                              print(wishlist);
                            }
                          });
                        },
                        Iconcolor: productDataTwo[index]["isFav"] == true
                            ? Colors.red
                            : Colors.grey,
                        press: () {
                          setState(() {
                            // Find the index of the selected item in cartItems
                            int cartIndex = cart.indexWhere((item) =>
                                item["ProductName"] ==
                                productDataTwo[index]["ProductName"]);

                            if (cartIndex != -1) {
                              // If item is already in cart, increase its quantity
                              cart[cartIndex]["quantity"] += 1;
                            } else {
                              // If item is not in cart, add it with quantity 1
                              Map<String, dynamic> newItem =
                                  Map.from(productDataTwo[index]);
                              newItem["quantity"] = 1;
                              cart.add(newItem);
                            }

                            print(cart);
                          });

                          //-----------------Text And Cards-----------------------
                        },
                      );
                    }),
              ),
            ],
          ),
        ))
      ],
    )));
  }
}
