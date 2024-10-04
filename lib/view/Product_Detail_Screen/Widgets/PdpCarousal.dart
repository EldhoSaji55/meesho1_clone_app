import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/CarousalWidget.dart';

class PdpcarousalWidget extends StatefulWidget {
  PdpcarousalWidget({
    required this.imageUrl,
    super.key,
  });
  final String imageUrl;

  @override
  State<PdpcarousalWidget> createState() => _PdpcarousalWidgetState();
}

class _PdpcarousalWidgetState extends State<PdpcarousalWidget> {
  int _currentindex = 0;
  late List<Widget> CarousalList;
  @override
  void initState() {
    super.initState();
    CarousalList = [
      Carousalwidget(
        imageUrl: widget.imageUrl,
        assetimage: false,
      ),
      Carousalwidget(imageUrl: ImageConstants.pdpcarousalimg1),
      Carousalwidget(imageUrl: ImageConstants.pdpcarousalimg2),
      Carousalwidget(imageUrl: ImageConstants.pdpcarousalimg3),
    ];
  }

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
                autoPlay: false,
                enlargeFactor: 0.5,
                autoPlayCurve: Curves.linear,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1,
                aspectRatio: 1 / 1,
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
