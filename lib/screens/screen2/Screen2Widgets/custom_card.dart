import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatefulWidget {
  final String ProductName;
  final String ProductPrice;
  final String ProductImage;
  final void Function()? press;
  final void Function()? IcononPressed;
  final Color? Iconcolor;
  // final void Function()? onPressed;
  // final Function(String, String) onAddToCart;
  const CustomCard({
    super.key,
    required this.ProductName,
    required this.ProductPrice,
    required this.ProductImage,
    this.press,
    this.IcononPressed,
    this.Iconcolor,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 194,
        width: 128,
        // color: Color.fromARGB(255, 146, 174, 231),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 254, 254),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(children: [
          Container(
            color: Color(0xffF8F9FB),
            height: 97,
            child: SvgPicture.asset(
              widget.ProductImage,
              // color: Color(0xffA1ABC0),
              width: 68,
              height: 68,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 238, 238),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: 97,
            width: 128,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.ProductName,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: widget.IcononPressed,
                            child: Icon(
                              Icons.favorite,
                              size: 25,
                              color: widget.Iconcolor,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          )
                        ],
                      ),
                      Text(
                        "Organic",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: widget.press,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 245, 245, 245)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 1, 1, 1))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.ProductPrice),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff2A4BA0),
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 10,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
