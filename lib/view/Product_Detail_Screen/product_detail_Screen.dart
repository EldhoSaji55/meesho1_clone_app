import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lottie/lottie.dart';
import 'package:meesho_clone_app/view/Global_widgets/COD_ReturnWidget.dart';
import 'package:meesho_clone_app/view/Product_Detail_Screen/Widgets/PdpCarousal.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({super.key, required this.productID});
  String productID;
  String imageUrl = "";
  String Category = "";
  String Brand = "";
  String rating = "";
  List colors = [];
  String Price = "";
  String userCount = "";
  String Discount = "";
  bool Mallproduct = false;
  bool trusted = false;
  @override
  Widget build(BuildContext context) {
    for (var i = 1; i < DummyDb.ProductList.length; i++) {
      if (DummyDb.ProductList[i]['id'] == productID) {
        imageUrl = DummyDb.ProductList[i]['imageUrl'];
        Category = DummyDb.ProductList[i]['Category'];
        colors = DummyDb.ProductList[i]['Color'];
        Brand = DummyDb.ProductList[i]['Brand'];
        userCount = DummyDb.ProductList[i]['userCount'];
        rating = DummyDb.ProductList[i]['rating'];
        Price = DummyDb.ProductList[i]['price'][0].values.first;
        Discount = DummyDb.ProductList[i]['Discount'][0].values.first;
        Mallproduct = DummyDb.ProductList[i]['mallProduct'];
        trusted = DummyDb.ProductList[i]['trusted'];
      }
    }
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _PDPLocationSection(),
                    SizedBox(
                      height: 10,
                    ),
                    PdpcarousalWidget(
                      imageUrl: imageUrl,
                    ),
                    _PDP_ProductsDetailsSection(),
                    COD_ReturnWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [Icon(Icons.shopping_cart), Text("Add to Cart")],
                  ),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:
                              BorderSide(color: ColorConstants.primaryColor)))),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [Icon(Icons.shopping_cart), Text("Buy Now")],
                  ),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:
                              BorderSide(color: ColorConstants.primaryColor)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _PDP_ProductsDetailsSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 3, child: Text("$Category , $Brand")),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.heart,
                            size: 18,
                          ),
                          Text(
                            "Wishlist",
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.shareNodes,
                            size: 18,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "₹ $Price",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      Discount,
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.mainGrey,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorConstants.mainGrey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "19% off",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "1st order discount",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                decoration: BoxDecoration(
                    color: ColorConstants.lightGreen.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(3)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "₹118 with 1 Special Offer >",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.MediumGreen,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "Free Delivery",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstants.MediumGreen,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text(
                                  rating,
                                  style: TextStyle(
                                      color: ColorConstants.mainWhite,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 13,
                                  color: ColorConstants.mainWhite,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "($userCount)",
                          style: TextStyle(
                              fontSize: 12, color: ColorConstants.mainGrey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    trusted
                        ? Image.asset("assets/icons/trustedicon.png")
                        : Text(""),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
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
          Lottie.network(
            "https://lottie.host/370e7d4d-5885-4a30-8c29-d0215544b878/VxL5cf4XbJ.json",
          ),
        ],
      ),
    );
  }
}
