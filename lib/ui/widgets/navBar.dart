library bottom_navy_bar;

import 'package:appet/ui/shared/app_colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: 1,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
      currentIndex: currentIndex,
      hasInk: true,
      inkColor: Colors.black12,
      hasNotch: true,
      //fabLocation: BubbleBottomBarFabLocation.end,
      onTap: changePage,
      items: [
        BubbleBottomBarItem(
          backgroundColor: lightMove,
          icon: Icon(
            Icons.dashboard,
            color: darkMove,
          ),
          activeIcon: Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        BubbleBottomBarItem(
          backgroundColor: lightMove,
          icon: Icon(
            Icons.shopping_cart,
            color: darkMove,
          ),
          activeIcon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
        ),
        BubbleBottomBarItem(
          backgroundColor: lightMove,
          icon: Icon(
            Icons.person,
            color: darkMove,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],

//      body: (currentIndex == 0)
//          ? Icon(
//              Icons.dashboard,
//              size: 150.0,
//              color: Colors.red,
//            )
//          : (currentIndex == 1)
//              ? Icon(
//                  Icons.shopping_cart,
//                  size: 150.0,
//                  color: Colors.indigo,
//                )
//              : Icon(
//                  Icons.person,
//                  size: 150.0,
//                  color: Colors.deepPurple,
//                ),
    );
  }
}
