import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/home_Screen/widget/titleCODWidget.dart';

class COD_ReturnWidget extends StatelessWidget {
  const COD_ReturnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: ColorConstants.Lavender,
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(10)),
        child: IntrinsicHeight(
          child: Row(
            children: [
              titleCODWidget(
                  text: "7 Days \nEasy Return",
                  iconlink: ImageConstants.returnIcon),
              VerticalDivider(
                thickness: 1,
                indent: 8,
                endIndent: 8,
              ),
              titleCODWidget(
                  text: "Cash on \nDelivery",
                  iconlink: ImageConstants.rupeeIcon),
              VerticalDivider(
                thickness: 1,
                indent: 8,
                endIndent: 8,
              ),
              titleCODWidget(
                  text: "Lowest \nPrice", iconlink: ImageConstants.pricetagIcon)
            ],
          ),
        ),
      ),
    );
  }
}
