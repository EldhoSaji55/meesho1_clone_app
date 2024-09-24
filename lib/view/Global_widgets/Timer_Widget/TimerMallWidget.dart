import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/view/Global_widgets/Timer_Widget/TimerCountdownState.dart';

class TimerMallWidget extends StatelessWidget {
  const TimerMallWidget({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerRadius,
    required this.containerColor,
    required this.awesomeIcons,
    required this.iconSize,
    required this.timerEnabled,
    required this.timerColor,
    required this.containerTitle,
  });

  final double containerHeight;
  final double containerWidth;
  final double containerRadius;
  final Color containerColor;
  final IconData? awesomeIcons;
  final double? iconSize;
  final bool timerEnabled;
  final Color? timerColor;
  final String? containerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(containerRadius),
          color: containerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            awesomeIcons,
            size: iconSize ?? 8,
          ),
          SizedBox(
            width: 2,
          ),
          timerEnabled
              ? TimerCountdown(
                  hoursDescription: 'h',
                  secondsDescription: 's',
                  minutesDescription: 'm',
                  spacerWidth: 3,
                  timeTextStyle: TextStyle(
                      color: timerColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  colonsTextStyle: TextStyle(
                      color: timerColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  descriptionTextStyle: TextStyle(
                      color: timerColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  format: CountDownTimerFormat.hoursMinutesSeconds,
                  endTime: DateTime.now()
                      .add(Duration(hours: 02, minutes: 00, seconds: 00)),
                  onTick: (remainingTime) {},
                )
              : Text(
                  containerTitle ?? "",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                )
        ],
      ),
    );
  }
}
