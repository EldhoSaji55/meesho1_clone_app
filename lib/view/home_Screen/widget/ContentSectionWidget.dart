import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/Timer_Widget/TimerMallWidget.dart';

class ContentSectionWidget extends StatelessWidget {
  ContentSectionWidget({
    required this.timerEnabled,
    required this.viewall,
    required this.title,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerRadius,
    required this.containerColor,
    this.awesomeIcons,
    this.iconColor,
    this.containerTitle,
    this.timerColor,
    this.iconSize,
    super.key,
  });
  bool timerEnabled = false;
  bool viewall = false;
  String title;
  double containerHeight;
  double containerWidth;
  double containerRadius;
  Color containerColor;
  IconData? awesomeIcons = FontAwesomeIcons.check;
  Color? iconColor = ColorConstants.mainWhite;
  Color? timerColor = ColorConstants.mainWhite;
  String? containerTitle;
  double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TimerMallWidget(
                      containerHeight: containerHeight,
                      containerWidth: containerWidth,
                      containerRadius: containerRadius,
                      containerColor: containerColor,
                      awesomeIcons: awesomeIcons,
                      iconSize: iconSize,
                      timerEnabled: timerEnabled,
                      timerColor: timerColor,
                      containerTitle: containerTitle)
                ],
              ),
              Spacer(),
              viewall
                  ? TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "VIEW ALL ",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: ColorConstants.secondaryColor,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: ColorConstants.mainWhite,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                    )
                  : SizedBox()
            ],
          )
        ],
      ),
    );
  }
}
