import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/SectionDividerWidget.dart';

class Productlistingscreen extends StatelessWidget {
  Productlistingscreen({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Title and Filter Section
        _TitleandFilterSection(),
        SectionDividerWidget(),
        SectionDividerWidget(),
      ],
    ));
  }

  Widget _TitleandFilterSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(color: ColorConstants.colGrey))),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/sort.png",
                    height: 15,
                    width: 15,
                  ),
                  Text(
                    " Sort",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            VerticalDivider(),
            Container(
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 18,
                  )
                ],
              ),
            ),
            VerticalDivider(),
            Container(
              child: Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 18,
                  )
                ],
              ),
            ),
            VerticalDivider(),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.filter_list_sharp,
                    size: 15,
                  ),
                  Text(
                    " Filters",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 0.2,
      )
    ]);
  }
}
