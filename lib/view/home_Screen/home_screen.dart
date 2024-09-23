import 'dart:async';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/GlobalCircleAvatar.dart';
import 'package:meesho_clone_app/view/Global_widgets/HomepageCarouselWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/ProductCardWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/SectionDividerWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/Timer_Widget/TimerCountdownState.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Non Scrollable Section
            Column(
              children: [
                //AppBar Section
                _appBarSection(),
                // Search Bar Section
                _SearchBarSection(),
              ],
            ),

            // Scrollable Section
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    //Title bar Section -Showing return policy, COD, Scrollable Circle avatar
                    _TitleBannerSection(),

                    //Carousal Banner
                    HomepageCarouselWidget(),

                    // Low Price Section
                    _LowPriceSection(screenWidth, screenHeight),

                    //Daily Deals Section
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Text("Daily Deals"),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.bomb),
                                      TimerCountdown(
                                          hoursDescription: 'h',
                                          secondsDescription: 's',
                                          minutesDescription: 'm',
                                          spacerWidth: 3,
                                          format: CountDownTimerFormat
                                              .hoursMinutesSeconds,
                                          endTime: DateTime.now().add(Duration(
                                              hours: 02,
                                              minutes: 00,
                                              seconds: 00)),
                                          onEnd: () => TimerCountdown(
                                              hoursDescription: 'h',
                                              secondsDescription: 's',
                                              minutesDescription: 'm',
                                              spacerWidth: 3,
                                              format: CountDownTimerFormat
                                                  .hoursMinutesSeconds,
                                              endTime: DateTime.now().add(
                                                  Duration(
                                                      hours: 02,
                                                      minutes: 00,
                                                      seconds: 00))))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _LowPriceSection(screenWidth, screenHeight) {
    return Column(
      children: [
        SectionDividerWidget(),
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Image.asset(
            ImageConstants.dailyDealImage,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Low Price Store",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 148,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductCardWidget(),
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: 5),
        ),
        SizedBox(
          height: 15,
        ),
        SectionDividerWidget()
      ],
    );
  }

  _TitleBannerSection() {
    return Column(
      children: [
        Container(
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
                  _titleWidget(
                      text: "7 Days \nEasy Return",
                      iconlink: ImageConstants.returnIcon),
                  VerticalDivider(
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                  ),
                  _titleWidget(
                      text: "Cash on \nDelivery",
                      iconlink: ImageConstants.rupeeIcon),
                  VerticalDivider(
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                  ),
                  _titleWidget(
                      text: "Lowest \nPrice",
                      iconlink: ImageConstants.pricetagIcon)
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 79,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Globalcircleavatar(
                      fetchassetimage: true,
                      bottomText: "Category",
                      imageLocation: ImageConstants.categoryIcon);
                } else {
                  index = index - 1;
                  return Globalcircleavatar(
                    fetchassetimage: false,
                    bottomText: DummyDb.CircleAvatarList[index]["text"],
                    imageLocation: DummyDb.CircleAvatarList[index]["imageurl"],
                  );
                }
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
              itemCount: DummyDb.CircleAvatarList.length),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  _appBarSection() {
    return AppBar(
      leadingWidth: 80,
      toolbarHeight: 80,
      title: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/welcome-gesture.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Let's shop!",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
      actions: [
        Icon(
          Icons.favorite,
          color: ColorConstants.mainred,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.shopping_cart,
          color: ColorConstants.primaryColor.withOpacity(.5),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }

  _SearchBarSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
          child: SizedBox(
            height: 40,
            child: TextField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
              hintText: "Search by Keyword or Product ID",
              hintStyle:
                  TextStyle(fontSize: 13, color: ColorConstants.mainGrey),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
                color: ColorConstants.mainGrey,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.mic,
                    size: 20,
                    color: ColorConstants.mainGrey,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: ColorConstants.mainGrey,
                  ),
                  SizedBox(width: 15),
                ],
              ),
            )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class _titleWidget extends StatelessWidget {
  String text;
  String iconlink;
  _titleWidget({
    required this.text,
    required this.iconlink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(iconlink),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$text",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
