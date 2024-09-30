import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/SectionDividerWidget.dart';
import 'package:meesho_clone_app/view/Product_Listing_Page/Widget/ProductListCardWidget.dart';

class Productlistingscreen extends StatelessWidget {
  Productlistingscreen({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title and Filter Section
        _TitleandFilterSection(),

        Container(
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                int firstprod = index * 2;
                int secondprod = firstprod + 1;
                return Row(
                  children: [
                    ProductListCardWidget(
                        timerEnabled: DummyDb.ProductList[firstprod]
                            ['Timeroffer'],
                        imageUrl: DummyDb.ProductList[firstprod]['imageUrl'],
                        mallEnabled: DummyDb.ProductList[firstprod]
                            ['mallProduct'],
                        enableAd: DummyDb.ProductList[firstprod]['trusted'],
                        brand: DummyDb.ProductList[firstprod]['Brand'],
                        discount: DummyDb
                            .ProductList[firstprod]['Discount'][0].values.first,
                        price: DummyDb
                            .ProductList[firstprod]['price'][0].values.first,
                        productName: DummyDb.ProductList[firstprod]['Category'],
                        rating: DummyDb.ProductList[firstprod]['rating'],
                        totalBuyers: DummyDb.ProductList[firstprod]
                            ['userCount'],
                        meeshotrusted: DummyDb.ProductList[firstprod]
                            ['trusted']),
                    SizedBox(
                      width: 3,
                    ),
                    ProductListCardWidget(
                        timerEnabled: DummyDb.ProductList[secondprod]
                            ['Timeroffer'],
                        imageUrl: DummyDb.ProductList[secondprod]['imageUrl'],
                        mallEnabled: DummyDb.ProductList[secondprod]
                            ['mallProduct'],
                        enableAd: DummyDb.ProductList[secondprod]['trusted'],
                        brand: DummyDb.ProductList[secondprod]['Brand'],
                        discount: DummyDb.ProductList[secondprod]['Discount'][0]
                            .values.first,
                        price: DummyDb
                            .ProductList[secondprod]['price'][0].values.first,
                        productName: DummyDb.ProductList[secondprod]
                            ['Category'],
                        rating: DummyDb.ProductList[secondprod]['rating'],
                        totalBuyers: DummyDb.ProductList[secondprod]
                            ['userCount'],
                        meeshotrusted: DummyDb.ProductList[secondprod]
                            ['trusted']),
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
              itemCount: 9),
        )
      ],
    );
  }

  Widget _TitleandFilterSection() {
    return Container(
      color: ColorConstants.mainWhite,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
      ]),
    );
  }
}
