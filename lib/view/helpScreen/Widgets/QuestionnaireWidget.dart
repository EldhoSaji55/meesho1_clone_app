import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class QuestionnaireWidget extends StatelessWidget {
  QuestionnaireWidget({
    super.key,
    required this.Question,
  });
  String Question;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Question,
                  style: TextStyle(
                      fontSize: 11,
                      color: ColorConstants.mainGrey,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      border: Border.all(
                        color: ColorConstants.Black.withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                  )),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: ColorConstants.mainGrey,
          ),
        ],
      ),
    );
  }
}
