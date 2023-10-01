import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/screens/screen6_Cart/my_cart.dart';
import 'package:flutterscndpractice/widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen11_CardINFO/cardInfo.dart';

class AddressScreen extends StatefulWidget {
  final double Subtotal1;
  final double Delivery1;
  final double Total1;
  const AddressScreen({
    super.key,
    required this.Subtotal1,
    required this.Delivery1,
    required this.Total1,
  });

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int selectedAddressIndex = -1; // Initially no address selected

  void selectAddress(int index) {
    setState(() {
      selectedAddressIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCart())
                                  );
                         
                          setState(() {});
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
                    "Shopping Cart",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Delivery Address"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 96,
              width: 327,
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedAddressIndex == 0
                      ? Colors.red // Change border color when selected
                      : Color(0xffF9B023),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () => selectAddress(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Home"),
                          Spacer(),
                          if (selectedAddressIndex == 0)
                            SvgPicture.asset(
                              "assets/images/tick.svg",
                              height: 22,
                              width: 22,
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("36 green way, Sunamganj"),
                          Spacer(),
                          // if (selectedAddressIndex == 0)
                          //   SvgPicture.asset(
                          //     "assets/images/tick.svg",
                          //     height: 22,
                          //     width: 22,
                          //   ),
                          Text("Edit")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 96,
              width: 327,
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedAddressIndex == 1
                      ? Colors.red // Change border color when selected
                      : Color.fromARGB(255, 189, 188, 186),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () => selectAddress(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Office"),
                          Spacer(),
                          if (selectedAddressIndex == 1)
                            SvgPicture.asset(
                              "assets/images/tick.svg",
                              height: 22,
                              width: 22,
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Medical road, Halal lab,"),
                              Text("Sunamganj"),
                            ],
                          ),
                          Spacer(),
                          Text("Edit")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 96,
              width: 327,
              decoration: BoxDecoration(
                border: Border.all(
                  color // Change border color when selected
                      : Color.fromARGB(255, 189, 188, 186),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.plus,
                    size: 15,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Add Address")
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              ButtonText: "Add Card",
              Width: 327,
              Height: 56,
              buttonColor: Color(0xff2A4BA0),
              borderRadius: BorderRadius.circular(20),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarfInformation(
                            total2: widget.Total1,
                            subtotal2: widget.Subtotal1,
                            Delivery2: widget.Delivery1)));
              },
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
