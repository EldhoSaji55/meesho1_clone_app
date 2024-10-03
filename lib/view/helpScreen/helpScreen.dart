import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/SectionDividerWidget.dart';
import 'package:meesho_clone_app/view/helpScreen/Widgets/QuestionnaireWidget.dart';
import 'package:meesho_clone_app/view/helpScreen/moreHelp.dart';

class Helpscreen extends StatelessWidget {
  const Helpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(
            needCart: false,
            needHeart: false,
            needSearch: false,
            title: "Quick help with orders",
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 260,
            child: Column(
              children: [
                Container(
                    height: 200,
                    child: Image.asset(
                      ImageConstants.quickHelpImage,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You are not signed in!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Sign in now to view or place order",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                ),
              ],
            ),
          ),
          SectionDividerWidget(),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "What issue are you facing?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          QuestionnaireWidget(
            Question: "How do I place an order ?",
          ),
          QuestionnaireWidget(
              Question:
                  "What should I do if I am unable to add my shipping and\nbilling address?"),
          QuestionnaireWidget(
              Question: "What is Meesho's Return & Exchange Policy"),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 5),
            color: ColorConstants.colGrey,
            child: Container(
              height: 70,
              color: ColorConstants.mainWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Morehelp(),
                        ));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Browse all help topics",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
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
                      Text(
                        "Reselling, account related, refer & earn etc.",
                        style: TextStyle(
                            fontSize: 11,
                            color: ColorConstants.mainGrey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
