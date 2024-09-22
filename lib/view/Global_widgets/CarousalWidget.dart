import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class Carousalwidget extends StatelessWidget {
  final String imageUrl;
  Carousalwidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
