import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Account_Screen/accountScreen.dart';
import 'package:meesho_clone_app/view/OrdernowScreen/orderNowScreen.dart';
import 'package:meesho_clone_app/view/category_Screen/categoryscreen.dart';
import 'package:meesho_clone_app/view/helpScreen/helpScreen.dart';
import 'package:meesho_clone_app/view/home_screen/home_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screens = [
    HomeScreen(),
    Categoryscreen(),
    SizedBox(),
    Helpscreen(),
    Accountscreen(),
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
                icon: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          context: context,
                          builder: (context) => Ordernowscreen());
                    },
                    child: Icon(Icons.shopping_cart_outlined)),
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
