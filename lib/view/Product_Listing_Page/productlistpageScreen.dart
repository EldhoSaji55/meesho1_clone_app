import 'package:flutter/material.dart';
import 'package:meesho_clone_app/view/Global_widgets/productListingScreen.dart';

class Productlistpagescreen extends StatelessWidget {
  const Productlistpagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Productlistingscreen(title: "Product For You"),
      ),
    );
  }
}
