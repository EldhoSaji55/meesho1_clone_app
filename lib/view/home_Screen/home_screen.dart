import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/GlobalCircleAvatar.dart';
import 'package:meesho_clone_app/view/Global_widgets/ProductCardWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/SectionDividerWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/productListingScreen.dart';
import 'package:meesho_clone_app/view/home_Screen/widget/ContentSectionWidget.dart';
import 'package:meesho_clone_app/view/home_Screen/widget/HomepageCarouselWidget.dart';
import 'package:meesho_clone_app/view/home_Screen/widget/ImageCardWidget.dart';
import 'package:meesho_clone_app/view/home_Screen/widget/titleCODWidget.dart';

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
            // _______________________________________________
            // Non Scrollable Section
            // _______________________________________________

            Column(
              children: [
                //AppBar Section
                _appBarSection(),
                // Search Bar Section
                _SearchBarSection(),
              ],
            ),

            // _______________________________________________
            // Scrollable Section
            // _______________________________________________

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Title bar Section -Showing return policy, COD, Scrollable Circle avatar
                    _TitleBannerSection(),

                    //Carousal Banner
                    HomepageCarouselWidget(),

                    // Low Price Section
                    _LowPriceSection(screenWidth, screenHeight),

                    //Daily Deals Section
                    _DailyDealsSection(screenWidth, screenHeight),

                    SectionDividerWidget(),

                    // Bachat Bazaar Section
                    _BachatBazaarSection(),

                    SectionDividerWidget(),

                    Container(
                        color: ColorConstants.colGrey,
                        child: Productlistingscreen(title: "Product For You")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _BachatBazaarSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              ContentSectionWidget(
                  timerEnabled: false,
                  viewall: false,
                  title: "Bachat Bazaar",
                  containerHeight: 0,
                  containerWidth: 0,
                  containerRadius: 0,
                  containerColor: ColorConstants.mainWhite),
              Container(
                height: 107,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ImageCardWidget(
                          titleColor: ColorConstants.cyan,
                          cardColor: ColorConstants.primaryColor,
                          cardHeight: 55,
                          cardWidth: 100,
                          fontWeight: 11,
                          titleFontWeight: FontWeight.w600,
                          imageUrl: DummyDb.CircleAvatarList[index]["imageurl"],
                          imageheight: 75,
                          title: DummyDb.CircleAvatarList[index]["text"],
                          imagebottomRadius: 10,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: DummyDb.CircleAvatarList.length),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget _DailyDealsSection(screenWidth, screenHeight) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ContentSectionWidget(
            viewall: true,
            timerEnabled: true,
            containerColor: ColorConstants.lightOrange,
            containerHeight: 25,
            containerWidth: 120,
            containerRadius: 5,
            awesomeIcons: FontAwesomeIcons.bomb,
            timerColor: ColorConstants.mainorange,
            title: "Daily Deals",
            iconSize: 16,
          ),
          Container(
            height: 130,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 3),
                itemBuilder: (context, index) => ImageCardWidget(
                      cardColor: ColorConstants.lightOrange,
                      cardHeight: 110,
                      cardWidth: 95,
                      imageUrl: DummyDb.CircleAvatarList[index]["imageurl"],
                      imageheight: 95,
                      title: DummyDb.CircleAvatarList[index]["text"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: DummyDb.CircleAvatarList.length),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget _LowPriceSection(screenWidth, screenHeight) {
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

  Widget _TitleBannerSection() {
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

  Widget _appBarSection() {
    return AppBar(
      forceMaterialTransparency: true,
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

  Widget _SearchBarSection() {
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
