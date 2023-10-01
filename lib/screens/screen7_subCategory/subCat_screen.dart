import 'package:flutter/material.dart';
import 'package:flutterscndpractice/data/subcategory_list.dart';
import 'package:flutterscndpractice/screens/Screen8_SubCategoryITEMS/subCatItems_View.dart';
import 'package:flutterscndpractice/screens/screen6_Cart/my_cart.dart';
import 'package:flutterscndpractice/screens/screen7_subCategory/subCat_Cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../DATA/cart.dart';

class SubCategoryView extends StatefulWidget {
  const SubCategoryView({super.key});

  @override
  State<SubCategoryView> createState() => _SubCategoryViewState();
}

class _SubCategoryViewState extends State<SubCategoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 252,
            color: Color(0xFF2A4BA0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  color: Color(0xFF2A4BA0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Hey, Halal",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                      // IconButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => MyCart()));
                      //     },
                      //     icon: const FaIcon(
                      //       FontAwesomeIcons.cartShopping,
                      //       color: Colors.white,
                      //     ))
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFF2a4ba0), // Specify the background color here
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
                            label: Text(""),
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
                      )
                    ],
                  ),
                ),
                //-----------------------
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 126,
                    width: 299,
                    color: Color(0xFF2A4BA0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Shop",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "By Category",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xffF9B023),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Meats & Fishes",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Vegetables",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 35, 35, 35),
                              fontSize: 12),
                        ),
                      )),
                  SizedBox(width: 5),
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 245, 245),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Fruits",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 31, 31, 31),
                              fontSize: 12),
                        ),
                      ))
                ],
              ),
            ),
          ),
          //-------------------------------------------------------------------
          //----------------------------------------------------------------
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                  itemCount: subCategoryData.length,
                  itemBuilder: (context, index) {
                    return SubCategoryCards(
                      subCategoryName: subCategoryData[index]
                          ["subCategoryName"],
                      subCategoryOrigin: subCategoryData[index]
                          ["subCategoryOrigin"],
                      PerKg: subCategoryData[index]["PerKg"],
                      subCategoryImage: subCategoryData[index]
                          ["subCategoryImage"],
                      onTap: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubCategoryItemsView()));
                        setState(() {});
                      },
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
