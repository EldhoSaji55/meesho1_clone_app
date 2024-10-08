import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class AppbarWidget extends StatelessWidget {
  AppbarWidget({
    this.needCart = true,
    this.needHeart = true,
    this.needSearch = true,
    required this.title,
    super.key,
  });

  bool needSearch;
  bool needHeart;
  bool needCart;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: AppBar(
        forceMaterialTransparency: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(15),
            child: Container(
              color: ColorConstants.colGrey,
              height: 1,
            )),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: ColorConstants.Black.withOpacity(0.8)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 6),
            child: Row(
              children: [
                needSearch
                    ? FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: ColorConstants.Iconblue,
                        size: 20,
                      )
                    : SizedBox(),
                SizedBox(
                  width: 10,
                ),
                needHeart
                    ? FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: ColorConstants.mainred,
                        size: 20,
                      )
                    : SizedBox(),
                SizedBox(
                  width: 10,
                ),
                needCart
                    ? FaIcon(
                        FontAwesomeIcons.cartShopping,
                        color: ColorConstants.primaryColor,
                        size: 20,
                      )
                    : SizedBox(),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
