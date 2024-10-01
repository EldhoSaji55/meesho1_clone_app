import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';

class Accountscreen extends StatelessWidget {
  Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(
            title: "ACCOUNT",
            needCart: true,
            needSearch: true,
            needHeart: false,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  _SignUpSection(),
                  _AccountScreenListSection(),
                  Container(
                    height: 200,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/madeinIndia.png"))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _AccountScreenListSection() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 9,
          ),
          Text(
            "My Payments",
            style: TextStyle(
                color: ColorConstants.Black.withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.ccAmazonPay,
            title: "Bank & UPI Details",
            iconColor: ColorConstants.Iconblue,
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.creditCard,
            title: "Payment & Refund",
            iconColor: ColorConstants.Iconblue,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "My Activity",
            style: TextStyle(
                color: ColorConstants.Black.withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.solidHeart,
            title: "Wishlisted Products",
            iconColor: ColorConstants.mainred,
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.shareNodes,
            title: "Shared Products",
            iconColor: ColorConstants.primaryColor.withOpacity(.7),
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.shop,
            title: "Followed Shops",
            iconColor: ColorConstants.mainorange,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Others",
            style: TextStyle(
                color: ColorConstants.Black.withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.coins,
            title: "Meesho Credits",
            iconColor: ColorConstants.mainYellow,
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.briefcase,
            title: "Become a Supplier",
            iconColor: ColorConstants.mainBrown.withOpacity(.8),
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.gear,
            title: "Settings",
            iconColor: ColorConstants.mainGrey,
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.solidStar,
            title: "Rate Meesho",
            iconColor: ColorConstants.secondaryColor,
          ),
          AccountListWidget(
            prefixIcon: FontAwesomeIcons.gavel,
            title: "Legal and Policies",
            iconColor: ColorConstants.mainBrown,
          ),
        ],
      ),
    );
  }

  Widget _SignUpSection() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage("assets/images/welcome-gesture.png"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Flexible(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstants.secondaryColor),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.mainWhite),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "View and update your profile details",
                        style: TextStyle(
                            fontSize: 11,
                            color: ColorConstants.Black.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: ColorConstants.Black.withOpacity(0.4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.phoneVolume,
                          color: ColorConstants.Iconblue,
                        ),
                        Text(
                          "Help Center",
                          style: TextStyle(
                              color: ColorConstants.Black.withOpacity(0.4),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: ColorConstants.Black.withOpacity(0.4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.language,
                          color: ColorConstants.primaryColor.withOpacity(0.7),
                        ),
                        Text(
                          "Change Language",
                          style: TextStyle(
                              color: ColorConstants.Black.withOpacity(0.4),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class AccountListWidget extends StatelessWidget {
  AccountListWidget({
    required this.prefixIcon,
    required this.title,
    this.iconColor = ColorConstants.primaryColor,
    super.key,
  });
  String title;
  IconData prefixIcon;
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            FaIcon(
              prefixIcon,
              color: iconColor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(color: ColorConstants.Black.withOpacity(0.7)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: ColorConstants.colGrey,
        ),
      ],
    );
  }
}
