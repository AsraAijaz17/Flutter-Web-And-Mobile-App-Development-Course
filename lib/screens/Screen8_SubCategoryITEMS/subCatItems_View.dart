import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/Screen8_SubCategoryITEMS/subCatItems_Cards.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../DATA/cart.dart';
import '../../DATA/items_descriptionList.dart';
import '../../DATA/subCatItems_list.dart';
import '../screen6_Cart/my_cart.dart';
import '../screen9_itemsDescrp/itemsdesc_View.dart';

class SubCategoryItemsView extends StatefulWidget {
  const SubCategoryItemsView({super.key});

  @override
  State<SubCategoryItemsView> createState() => _SubCategoryItemsViewState();
}

class _SubCategoryItemsViewState extends State<SubCategoryItemsView> {
  List cartItems = [];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 100,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {}, child: FaIcon(FontAwesomeIcons.arrowLeft)),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Big & Small Fishes",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                InkWell(onTap: () {}, child: FaIcon(FontAwesomeIcons.search)),
                SizedBox(
                  width: 30,
                ),
                //----------------------------
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 254,
                            254), // Specify the background color here
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
                        color: Colors.black,
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

                //-------------------------------------------
                ,
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),

          //--------------------------------------------------------------
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xffF9B023),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Low price",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Small Fishes",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: screenWidth < 400 ? 0.8 : 1),
                itemCount: SubCategoryItems_List.length,
                itemBuilder: (context, index) {
                  return SubCatItemsCards(
                    SubCatItem_Name: SubCategoryItems_List[index]
                        ["ProductName"],
                    SubCatItem_Price:
                        "\$${SubCategoryItems_List[index]["ProductPrice"].toString()}",
                    SubCatItem_Image: SubCategoryItems_List[index]
                        ["ProductImage"],
                    press: () {
                      setState(() {
                        // Find the index of the selected item in cartItems
                        int cartIndex = cart.indexWhere((item) =>
                            item["ProductName"] ==
                            SubCategoryItems_List[index]["ProductName"]);

                        if (cartIndex != -1) {
                          // If item is already in cart, increase its quantity
                          cart[cartIndex]["quantity"] += 1;
                        } else {
                          // If item is not in cart, add it with quantity 1
                          Map<String, dynamic> newItem =
                              Map.from(SubCategoryItems_List[index]);
                          newItem["quantity"] = 1;
                          cart.add(newItem);
                        }

                        print(cart);
                      });
                    },
                    onTapp: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDescriptionView(
                            Name: SubCategoryItems_List[index]["ProductName"],
                            Price:
                                "\$${SubCategoryItems_List[index]["ProductPrice"].toString()}",
                            Description: FishData[index]["Description"],
                            Nutrition: FishData[index]["Nutrition Facts"],
                            Reviews: FishData[index]["Reviews"],
                            Image: FishData[index]["Image"],
                          ),
                        ),
                      );
                    },
                  );
                }),
          ))
          //---------------------------------------------------------------------
        ],
      ),
    ));
  }
}
