import 'package:flutter/material.dart';
import 'package:meesho_clone_app/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MeeshoCloneApp());
}

class MeeshoCloneApp extends StatelessWidget {
  const MeeshoCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
