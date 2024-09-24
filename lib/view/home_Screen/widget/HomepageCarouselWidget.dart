import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/CarousalWidget.dart';

class HomepageCarouselWidget extends StatefulWidget {
  HomepageCarouselWidget({
    super.key,
  });

  @override
  State<HomepageCarouselWidget> createState() => _HomepageCarouselWidgetState();
}

class _HomepageCarouselWidgetState extends State<HomepageCarouselWidget> {
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
                enlargeFactor: 0.5,
                autoPlayCurve: Curves.linear,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                aspectRatio: 2.35 / 1,
                enableInfiniteScroll: false,
                padEnds: true)),
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
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
