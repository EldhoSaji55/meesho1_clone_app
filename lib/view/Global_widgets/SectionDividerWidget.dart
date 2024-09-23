import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class SectionDividerWidget extends StatelessWidget {
  const SectionDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: double.infinity,
      color: ColorConstants.lightGrey,
    );
  }
}
