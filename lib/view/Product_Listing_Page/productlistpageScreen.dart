import 'package:flutter/material.dart';

import 'package:meesho_clone_app/view/Global_widgets/productListingWidget.dart';

class Productlistpagescreen extends StatelessWidget {
  Productlistpagescreen({
    super.key,
    required this.title,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ProductlistingWidget(title: title),
      ),
    );
  }
}
