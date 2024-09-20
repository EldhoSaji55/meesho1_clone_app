import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/home_screen/home_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screens = [
    HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(
                  Icons.home,
                  color: ColorConstants.primaryColor,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                activeIcon: Icon(
                  Icons.category,
                  color: ColorConstants.primaryColor,
                ),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: ColorConstants.primaryColor,
                ),
                label: 'My Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_center_outlined),
                activeIcon: Icon(
                  Icons.help_center,
                  color: ColorConstants.primaryColor,
                ),
                label: 'Help'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: ColorConstants.primaryColor,
                ),
                label: 'Account'),
          ]),
      body: screens[index],
    );
  }
}
