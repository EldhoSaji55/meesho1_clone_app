import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class Globalcircleavatar extends StatelessWidget {
  String bottomText;
  String imageLocation;
  bool fetchassetimage = false;

  Globalcircleavatar(
      {super.key,
      required this.bottomText,
      required this.imageLocation,
      required this.fetchassetimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: fetchassetimage
              ? AssetImage(imageLocation)
              : NetworkImage(imageLocation),
          backgroundColor: ColorConstants.mainWhite,
          radius: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            bottomText,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
