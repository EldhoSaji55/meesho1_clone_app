import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 4.9,
      width: screenWidth / 3.2,
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.primaryColor, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.lightOrange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color: ColorConstants.mainWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "Kurtis",
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
