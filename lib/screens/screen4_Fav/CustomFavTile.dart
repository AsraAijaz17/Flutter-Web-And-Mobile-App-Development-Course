import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterscndpractice/DATA/favouriteList.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFavouriteTile extends StatefulWidget {
  final String ProductName;
  final int ProductPrice;
  final String ProductImage;
  // final void Function()? iconOnTap;

  const CustomFavouriteTile({
    super.key,
    required this.ProductName,
    required this.ProductPrice,
    required this.ProductImage,
  });

  @override
  State<CustomFavouriteTile> createState() => _CustomFavouriteTileState();
}

class _CustomFavouriteTileState extends State<CustomFavouriteTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 100,
        color: Color.fromARGB(255, 231, 229, 229),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              // color: Colors.yellow,
              child: SvgPicture.asset(
                widget.ProductImage,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.ProductName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$${widget.ProductPrice.toString()}",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Spacer(),
            // GestureDetector(
            //   onTap: widget.iconOnTap,
            //   child: Icon(
            //     Icons.remove_circle,
            //     color: Colors.red,
            //     size: 30,
            //   ),
            // ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
