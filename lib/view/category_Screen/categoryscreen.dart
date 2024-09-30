import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';
import 'package:meesho_clone_app/view/Global_widgets/GlobalCircleAvatar.dart';
import 'package:meesho_clone_app/view/category_Screen/Widget/CategoryListWidget.dart';

class Categoryscreen extends StatelessWidget {
  const Categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Appbar
          AppbarWidget(),

          //Category Lists
          Expanded(
            child: Categorylistwidget(),
          )
        ],
      ),
    );
  }
}
