import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen1/page_view_screen.dart';

import 'package:flutterscndpractice/screens/screen2/SCREENTWO.dart';

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
