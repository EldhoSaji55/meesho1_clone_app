import 'package:flutter/material.dart';

class titleCODWidget extends StatelessWidget {
  String text;
  String iconlink;
  titleCODWidget({
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
