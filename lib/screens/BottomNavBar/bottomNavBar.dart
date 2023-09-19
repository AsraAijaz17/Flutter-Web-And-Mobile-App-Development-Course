import 'package:flutter/material.dart';
import 'package:flutterscndpractice/screens/screen1_Home/page_view_screen.dart';

import '../screen3_Categories/categories_screen.dart';
import '../screen4_Fav/favourite_screen.dart';
import '../screen5_More/more_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Initialize the active index as 0 (Home).

  final List<Widget> _screens = [
    PageViewScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    MoreScreen(),
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
        items: [
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
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More', // Label for the More tab.
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 47, 42, 209),
        elevation: 18.0, // Elevation (shadow) of the navigation bar
        type: BottomNavigationBarType
            .fixed, // Required when using labels with more than 3 items
        selectedFontSize: 14.0, // Font size of the selected label
        unselectedFontSize: 12.0, // Font size of unselected labels
      ),
    );
  }
}
