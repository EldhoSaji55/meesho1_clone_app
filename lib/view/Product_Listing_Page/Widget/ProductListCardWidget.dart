import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/Timer_Widget/TimerMallWidget.dart';

class ProductListCardWidget extends StatelessWidget {
  ProductListCardWidget({
    super.key,
    required this.timerEnabled,
    required this.imageUrl,
    required this.mallEnabled,
    required this.enableAd,
    required this.brand,
    required this.discount,
    required this.price,
    required this.productName,
    required this.rating,
    required this.totalBuyers,
    required this.meeshotrusted,
  });

  // String ImageUrl;
  bool? timerEnabled;
  bool? mallEnabled;
  bool? enableAd;
  String brand;
  String imageUrl;
  String productName;
  String price;
  String discount;
  String totalBuyers;
  String rating;
  bool meeshotrusted;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 305,
          width: 194,
          color: ColorConstants.mainWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover),
                  ),
                ),
                timerEnabled == true
                    ? Positioned(
                        bottom: 0,
                        left: 8,
                        child: TimerMallWidget(
                            containerHeight: 20,
                            containerWidth: 120,
                            containerRadius: 20,
                            containerColor: ColorConstants.lightOrange,
                            awesomeIcons: FontAwesomeIcons.bomb,
                            iconSize: 15,
                            timerEnabled: true,
                            timerColor: ColorConstants.mainorange,
                            containerTitle: "Timer"))
                    : Text(""),
                mallEnabled == true
                    ? Positioned(
                        bottom: 0,
                        left: 8,
                        child: TimerMallWidget(
                            containerHeight: 20,
                            containerWidth: 60,
                            containerRadius: 20,
                            containerColor: ColorConstants.Iconblue,
                            awesomeIcons: FontAwesomeIcons.check,
                            iconSize: 12,
                            timerEnabled: false,
                            timerColor: ColorConstants.lightOrange,
                            containerTitle: "Mall"))
                    : Text(""),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        enableAd == true
                            ? Container(
                                padding: EdgeInsets.symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstants.lightGrey)),
                                child: Text(
                                  "Ad",
                                  style: TextStyle(fontSize: 9),
                                ),
                              )
                            : Text(""),
                        enableAd == true
                            ? SizedBox(
                                width: 3,
                              )
                            : Text(""),
                        Container(
                          child: Text(
                            brand,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.mainGrey),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                              productName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.mainGrey),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "₹ $price",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            discount,
                            style: TextStyle(
                                fontSize: 11,
                                color: ColorConstants.mainGrey,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: ColorConstants.mainGrey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "19% off",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "1st order discount",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: ColorConstants.lightGreen.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "₹118 with 1 Special Offer",
                        style: TextStyle(
                            fontSize: 10,
                            color: ColorConstants.MediumGreen,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      "Free Delivery",
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorConstants.MediumGreen,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        rating,
                                        style: TextStyle(
                                            color: ColorConstants.mainWhite,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        size: 13,
                                        color: ColorConstants.mainWhite,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                totalBuyers,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          meeshotrusted
                              ? Image.asset("assets/icons/trustedicon.png")
                              : Text(""),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 3,
        ),
      ],
    );
  }
}
