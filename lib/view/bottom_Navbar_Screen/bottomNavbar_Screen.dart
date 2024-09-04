import 'package:flutter/material.dart';
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
                icon: Image.asset(
                  "assets/images/home_disabled.png",
                  height: 50,
                ),
                activeIcon: Image.asset(
                  "assets/images/home_enabled.png",
                  height: 50,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home_disabled.png",
                  height: 50,
                ),
                activeIcon: Image.asset(
                  "assets/images/home_enabled.png",
                  height: 50,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home_disabled.png",
                  height: 50,
                ),
                activeIcon: Image.asset(
                  "assets/images/home_enabled.png",
                  height: 50,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home_disabled.png",
                  height: 50,
                ),
                activeIcon: Image.asset(
                  "assets/images/home_enabled.png",
                  height: 50,
                ),
                label: ''),
          ]),
    );
  }
}
