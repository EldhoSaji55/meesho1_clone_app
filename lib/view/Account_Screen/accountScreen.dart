import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(
            title: "ACCOUNT",
            needCart: true,
            needSearch: true,
            needHeart: false,
          ),
          SizedBox(
            height: 10,
          ),
          _SignUpSection()
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
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Container(
                            decoration: BoxDecoration(),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
