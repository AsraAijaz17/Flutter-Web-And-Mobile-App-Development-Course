import 'package:flutter/material.dart';
import 'package:flutterscndpractice/DATA/subcategory_list.dart';
import 'package:flutterscndpractice/screens/screen2/SCREENTWO.dart';
import 'package:flutterscndpractice/screens/screen3_Categories/category_screen.dart';
import 'package:flutterscndpractice/screens/screen7_subCategory/subCat_screen.dart';

import '../screen4_Fav/favourite_screen.dart';
import '../screen5_More/more_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Initialize the active index as 0 (Home).

  final List<Widget> _screens = const [
    ScreenTwoView(),
    CategoryView(),
    FavouriteScreen(),
    // MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Display the selected screen.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected index.
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Label for the Home tab.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category', // Label for the Category tab.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite', // Label for the Favorite tab.
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more),
          //   label: 'More', // Label for the More tab.
          // ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 133, 132, 132),
        backgroundColor: Color(0xff2A4BA0),
        elevation: 18.0, // Elevation (shadow) of the navigation bar
        type: BottomNavigationBarType
            .fixed, // Required when using labels with more than 3 items
        selectedFontSize: 14.0, // Font size of the selected label
        unselectedFontSize: 12.0, // Font size of unselected labels
      ),
    );
  }
}
