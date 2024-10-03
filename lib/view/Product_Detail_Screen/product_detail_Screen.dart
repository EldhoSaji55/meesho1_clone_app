import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lottie/lottie.dart';
import 'package:meesho_clone_app/view/Product_Detail_Screen/Widgets/PdpCarousal.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppbarWidget(
            title: "",
            needCart: true,
            needHeart: true,
            needSearch: true,
          ),
          _PDPLocationSection(),
          PdpcarousalWidget(),
        ],
      )),
    );
  }

  Widget _PDPLocationSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      height: 35,
      color: ColorConstants.Iconblue.withOpacity(0.2),
      child: Row(
        children: [
          HugeIcon(
            icon: HugeIcons.strokeRoundedLocation10,
            color: ColorConstants.Iconblue,
            size: 16,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Add delivery location to get extra discount",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          // Lottie.network(
          //   "https://lottie.host/370e7d4d-5885-4a30-8c29-d0215544b878/VxL5cf4XbJ.json",
          // ),
        ],
      ),
    );
  }
}
