import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/CarousalWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/GlobalCircleAvatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //AppBar Section
        appBar: _appBarSection(),
        body: Column(
          children: [
            // Search Bar Section
            _SearchBarSection(),
            SizedBox(
              height: 5,
            ),

            //Title bar Section -Showing return policy, COD, Scrollable Circle avatar
            _TitleBannerSection(),

            //Carousal Banner
            SizedBox(height: 15),
            _HomepageCarousel(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
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
        )
      ],
    );
  }

  AppBar _appBarSection() {
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
          width: 20,
        )
      ],
    );
  }

  _SearchBarSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 45,
        child: TextField(
            decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ColorConstants.lightGrey)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ColorConstants.lightGrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ColorConstants.lightGrey)),
          hintText: "Search by Keyword or Product ID",
          hintStyle: TextStyle(fontSize: 15, color: ColorConstants.mainGrey),
          prefixIcon: Icon(
            Icons.search,
            color: ColorConstants.mainGrey,
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.mic,
                color: ColorConstants.mainGrey,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.camera_alt,
                color: ColorConstants.mainGrey,
              ),
              SizedBox(width: 15),
            ],
          ),
        )),
      ),
    );
  }
}

class _HomepageCarousel extends StatefulWidget {
  _HomepageCarousel({
    super.key,
  });

  @override
  State<_HomepageCarousel> createState() => _HomepageCarouselState();
}

class _HomepageCarouselState extends State<_HomepageCarousel> {
  int _currentindex = 0;
  List<Widget> CarousalList = [
    Carousalwidget(imageUrl: ImageConstants.carosalBanner_1),
    Carousalwidget(imageUrl: ImageConstants.carosalBanner_2),
    Carousalwidget(imageUrl: ImageConstants.carosalBanner_3),
    Carousalwidget(imageUrl: ImageConstants.carosalBanner_4),
    Carousalwidget(imageUrl: ImageConstants.carosalBanner_5),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: CarousalList,
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  _currentindex = index;
                  setState(() {});
                },
                autoPlay: true,
                autoPlayCurve: Curves.linear,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.7,
                aspectRatio: 16 / 6,
                enableInfiniteScroll: false,
                padEnds: false)),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < CarousalList.length; i++) ...[
              Container(
                height: 6,
                width: (_currentindex == i) ? 20 : 12,
                decoration: BoxDecoration(
                    color: (_currentindex == i)
                        ? ColorConstants.primaryColor
                        : ColorConstants.lightGrey,
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                width: 5,
              ),
            ]
          ],
        )
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
