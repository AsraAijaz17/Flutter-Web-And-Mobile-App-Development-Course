import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubCatItemsCards extends StatefulWidget {
  final String SubCatItem_Name;
  final String SubCatItem_Price;
  final String SubCatItem_Image;
  final void Function()? press;
  final void Function()? onTapp;

  const SubCatItemsCards(
      {super.key,
      required this.SubCatItem_Name,
      required this.SubCatItem_Price,
      required this.SubCatItem_Image,
      this.press, this.onTapp});

  @override
  State<SubCatItemsCards> createState() => _SubCatItemsCardsState();
}

class _SubCatItemsCardsState extends State<SubCatItemsCards> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTapp ,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF8F9FB), borderRadius: BorderRadius.circular(10)),
        height: 194,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenWidth > 600 ? 200 : 120,
              decoration: BoxDecoration(
                  color: Color(0xffF8F9FB),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: screenWidth > 600 ? 130 : 70,
                      width: screenWidth > 600 ? 130 : 70,
                      color: Color(0xffF8F9FB),
                      child: SvgPicture.asset(
                        widget.SubCatItem_Image,
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                  // Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        //---------changes-------
                        child: InkWell(
                          onTap: widget.press,
                          // style: ElevatedButton.styleFrom(
                          //   primary: Color.fromARGB(255, 240, 241,
                          //       242), // Change this to your desired background color
                          // ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff2A4BA0),
                            child: FaIcon(
                              FontAwesomeIcons.plus,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Color.fromARGB(255, 201, 198, 198),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.SubCatItem_Price,
                    style: TextStyle(
                        fontSize: screenWidth > 680 ? 34 : 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.SubCatItem_Name,
                    style: TextStyle(
                        fontSize: screenWidth > 680 ? 34 : 12,
                        color: Color.fromARGB(255, 128, 131, 131)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
