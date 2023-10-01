import 'package:flutter/material.dart';
import 'package:flutterscndpractice/DATA/favouriteList.dart';
import 'package:flutterscndpractice/screens/screen4_Fav/CustomFavTile.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  removeItem(index) {
    setState(() {
      wishlist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2A4BA0),
        title: Text(
          "Wishlist",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: wishlist.length,
          itemBuilder: ((context, index) {
            return CustomFavouriteTile(
              ProductName: wishlist[index]["ProductName"],
              ProductPrice: wishlist[index]["ProductPrice"],
              ProductImage: wishlist[index]["ProductImage"],
              // iconOnTap: () {
              //   removeItem(index);
              // },
            );
          })),
    );
  }
}
