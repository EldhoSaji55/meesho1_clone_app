import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class ImageCardWidget extends StatelessWidget {
  ImageCardWidget({
    required this.cardHeight,
    required this.cardWidth,
    this.borderColor = ColorConstants.primaryColor,
    required this.cardColor,
    this.titleColor = ColorConstants.primaryColor,
    required this.imageUrl,
    required this.imageheight,
    this.imagebottomRadius = 0,
    this.imagetopRadius = 10,
    this.fontWeight = 10,
    required this.title,
    this.titleFontWeight = FontWeight.w400,
    super.key,
  });
  double cardHeight;
  double cardWidth;
  Color borderColor;
  Color cardColor;
  Color titleColor;
  String imageUrl;
  double imageheight;
  double imagetopRadius;
  double imagebottomRadius;
  FontWeight titleFontWeight;
  double fontWeight;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: cardColor,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: imageheight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(imagebottomRadius),
                      bottomRight: Radius.circular(imagebottomRadius),
                      topLeft: Radius.circular(imagetopRadius),
                      topRight: Radius.circular(imagetopRadius),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: fontWeight,
                      color: titleColor,
                      fontWeight: titleFontWeight),
                ),
              )
            ],
          ),
          ClipPath(
            clipper: customClip(),
            child: Container(
              height: 30,
              width: 30,
              color: const Color.fromRGBO(255, 127, 67, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Under",
                    style:
                        TextStyle(color: ColorConstants.mainWhite, fontSize: 7),
                  ),
                  Text(
                    "₹ 350",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 9,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class customClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addPolygon([
      Offset(0, 0),
      Offset(0, size.height),
      Offset(size.width / 2, size.height / 1.25),
      Offset(size.width, size.height),
      Offset(size.width, 0)
    ], true);
    // path.lineTo(size.width/, y)
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
