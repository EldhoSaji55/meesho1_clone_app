import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Global_widgets/GlobalCircleAvatar.dart';

class Categorylistwidget extends StatefulWidget {
  Categorylistwidget({super.key});

  @override
  State<Categorylistwidget> createState() => _CategorylistwidgetState();
}

class _CategorylistwidgetState extends State<Categorylistwidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Row(
                      children: [
                        currentIndex == index
                            ? Container(
                                width: 3,
                                height: 100,
                                color: ColorConstants.primaryColor,
                              )
                            : Container(),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? ColorConstants.mainWhite
                                    : ColorConstants.Iconblue.withOpacity(.1),
                                border: Border.symmetric(
                                    horizontal: BorderSide(
                                        color: ColorConstants.colGrey))),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Globalcircleavatar(
                                  bottomText: DummyDb.ProductList[index]
                                          ['Category']
                                      .toString(),
                                  imageLocation: DummyDb.ProductList[index]
                                      ['imageUrl'],
                                  fetchassetimage: false),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(),
              itemCount: 10),
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: Row(
                    children: [
                      Text(
                        "POPULAR ",
                        style: TextStyle(
                          color: ColorConstants.mainGrey,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: ColorConstants.mainGrey,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryDetailedWidget(
                            category: DummyDb.ProductList[index]['Category']);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 12,
                          ),
                      itemCount: 10),
                ),
              ],
            )),
      ],
    );
  }
}

class CategoryDetailedWidget extends StatelessWidget {
  CategoryDetailedWidget({
    required this.category,
    super.key,
  });
  String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(
            height: 12,
          ),
          CircleAvatarGroup(
            category: category,
          )
        ],
      ),
    );
  }
}

class CircleAvatarGroup extends StatelessWidget {
  CircleAvatarGroup({
    super.key,
    required this.category,
  });

  String category;
  final List<List<String>> CategoryProd = [];

  @override
  Widget build(BuildContext context) {
    CategoryProd.clear();
    for (var i = 0; i < DummyDb.ProductList.length; i++) {
      if (DummyDb.ProductList[i]['Category'] == category) {
        CategoryProd.add([
          DummyDb.ProductList[i]['Brand'],
          DummyDb.ProductList[i]['imageUrl']
        ]);
      }
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          CategoryProd.length.clamp(0, 3),
          (index) => Row(
            children: [
              Globalcircleavatar(
                  bottomText: CategoryProd[index][0],
                  imageLocation: CategoryProd[index][1],
                  fetchassetimage: false),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ));
  }
}
