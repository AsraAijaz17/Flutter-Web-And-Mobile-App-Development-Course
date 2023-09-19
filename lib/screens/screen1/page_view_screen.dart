//First Blue slider Screen

import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen1/screenOneCONTENT.dart';



class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(color: Color(0xff2A4BA0), child: ScreenOneContent()),
          Container(color: Color(0xff2A4BA0), child: ScreenOneContent()),
        ],
      ),
    );
  }
}
