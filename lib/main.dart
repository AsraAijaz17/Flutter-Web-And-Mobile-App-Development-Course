import 'package:flutter/material.dart';
import 'package:flutterscndpractice/rough.dart';
import 'package:flutterscndpractice/roughCart.dart';
import 'package:flutterscndpractice/screens/Screen13_Map/MapView.dart';

import 'package:flutterscndpractice/screens/screen1/page_view_screen.dart';
import 'package:flutterscndpractice/screens/screen12_OrdersScreen/customOrderTile.dart';
import 'package:flutterscndpractice/screens/screen12_OrdersScreen/ordersView.dart';
import 'package:flutterscndpractice/screens/screen2/SCREENTWO.dart';
import 'package:flutterscndpractice/screens/screen4_Fav/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViewScreen(),
    );
  }
}
