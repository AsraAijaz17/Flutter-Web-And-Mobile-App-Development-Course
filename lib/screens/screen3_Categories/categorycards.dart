import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCards extends StatelessWidget {
  final String CategoryName;
  final String Origin;
  final String CategoryImage;

  const CategoryCards({
    super.key,
    required this.CategoryName,
    required this.Origin,
    required this.CategoryImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 164,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 210, 211, 213),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(
              CategoryImage,
              height: 68,
              width: 68,
            ),
          ),
          Divider(
            color: const Color(0xffE0E2EE),
            thickness: 1.0,
            height: 20, // Adjust the height as needed
            indent: 16.0, // Adjust the indent as needed
            endIndent: 16.0, // Adjust the endIndent as needed
          ),
          Text(
            CategoryName,
            style: TextStyle(fontWeight: FontWeight.w700),
          ), //categoryName Pass here
          Text(Origin) //CategoryOrigin pass here
        ],
      ),
    );
  }
}
