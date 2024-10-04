import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class Carousalwidget extends StatelessWidget {
  final String imageUrl;
  bool assetimage = true;
  Carousalwidget({super.key, required this.imageUrl, this.assetimage = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: assetimage ? AssetImage(imageUrl) : NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
