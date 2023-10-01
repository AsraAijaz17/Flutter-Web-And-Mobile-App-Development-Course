import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemDescriptionView extends StatefulWidget {
  final String Name;
  final String Price;
  final String Description;
  final String Nutrition;
  final String Reviews;
  final String Image;
  const ItemDescriptionView(
      {super.key,
      required this.Name,
      required this.Price,
      required this.Description,
      required this.Nutrition,
      required this.Reviews,
      required this.Image});

  @override
  State<ItemDescriptionView> createState() => _ItemDescriptionViewState();
}

class _ItemDescriptionViewState extends State<ItemDescriptionView> {
  bool isExpanded = false;
  bool isExpandedd = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 220,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.arrow_back_ios_new),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Orange",
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: FaIcon(
                          FontAwesomeIcons.cartShopping,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(
                  widget.Image,
                  width: 60,
                  height: 60,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 6,
                      color: Color(0xffF9B023),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 30,
                      height: 6,
                      color: Color(0xFFC2C0C0),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 30,
                      height: 6,
                      color: Color(0xFFC2C0C0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 229, 232),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.Name.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.Price.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2A4BA0),
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xff2A4BA0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("\$22.04 OFF",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Reg: \$56.70 USD", style: TextStyle(fontSize: 14))
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Star.svg",
                        height: 20,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/images/Star.svg",
                        height: 20,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/images/Star.svg",
                        height: 20,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/images/Star.svg",
                        height: 20,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/images/Star.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "110 Reviews",
                        style: TextStyle(color: Color(0xffA1A1AB)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(widget.Description.toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
                  // Row(
                  //   children: [
                  //     Text("Nutritional facts"),
                  //     Spacer(),
                  //     IconButton(
                  //         onPressed: () {}, icon: Icon(Icons.arrow_downward))
                  //   ],
                  // ),

                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide.none),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 228, 229, 232),
                      ), // Change to your desired color
                    ),
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: ListTile(
                      title: Text('Nutritional facts'),
                      trailing: isExpanded
                          ? Icon(Icons.arrow_upward)
                          : Icon(Icons.arrow_downward),
                    ),
                  ),
                  if (isExpanded)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        widget.Nutrition.toString(),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),

                  // Divider(
                  //   height: 12,
                  //   color: const Color.fromARGB(255, 179, 178, 178),
                  // ),

                  // Row(
                  //   children: [
                  //     Text("Reviewssssss"),
                  //     Spacer(),
                  //   ],
                  // ),

                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide.none),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 228, 229, 232),
                      ), // Change to your desired color
                    ),
                    onPressed: () {
                      setState(() {
                        isExpandedd = !isExpandedd;
                      });
                    },
                    child: ListTile(
                      title: Text('Reviews'),
                      trailing: isExpandedd
                          ? Icon(Icons.arrow_upward)
                          : Icon(Icons.arrow_downward),
                    ),
                  ),
                  if (isExpandedd)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        widget.Reviews.toString(),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  // Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          ButtonText: "Add To Cart",
                          Width: 143,
                          Height: 56,
                          buttonColor: Color(0xffF8F9FB),
                          borderRadius: BorderRadius.circular(20),
                          textColor: Colors.black),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                          ButtonText: "Buy Now",
                          Width: 143,
                          Height: 56,
                          buttonColor: Color(0xff2A4BA0),
                          borderRadius: BorderRadius.circular(20),
                          textColor: Colors.white)
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
