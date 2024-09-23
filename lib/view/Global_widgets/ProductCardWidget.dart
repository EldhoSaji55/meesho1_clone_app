import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: screenHeight / 7,
              width: screenWidth / 3.8,
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.mainorange, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  height: screenHeight / 7.2,
                  width: screenWidth / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryColor,
                  )),
            ),
            Positioned(
                top: 2,
                left: 2,
                child: Material(
                  elevation: 0.5,
                  color: Colors.transparent,
                  child: Container(
                      height: screenHeight / 7.4,
                      width: screenWidth / 4.1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: ColorConstants.mainred.withOpacity(0.5),
                                offset: Offset(2, 3),
                                blurRadius: 0.5)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(ImageConstants.carosalBanner_1),
                              fit: BoxFit.cover))),
                )),
            Positioned(
                bottom: 15,
                right: 5,
                child: Container(
                  height: 25,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [Colors.amber.shade300, Colors.amber.shade800],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Under",
                        style: TextStyle(
                            color: ColorConstants.mainBrown,
                            fontWeight: FontWeight.w500,
                            fontSize: 8),
                      ),
                      Text(
                        "₹250",
                        style: TextStyle(
                            color: ColorConstants.mainBrown,
                            fontWeight: FontWeight.w900,
                            fontSize: 9),
                      ),
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Kurti & Kurtas",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
