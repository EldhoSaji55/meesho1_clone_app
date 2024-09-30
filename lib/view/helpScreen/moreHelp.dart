import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dummy_db.dart';
import 'package:meesho_clone_app/view/Global_widgets/AppbarWidget.dart';
import 'package:meesho_clone_app/view/helpScreen/Widgets/QuestionnaireWidget.dart';

class Morehelp extends StatelessWidget {
  const Morehelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(
            title: "All help topics",
            needCart: false,
            needHeart: false,
            needSearch: false,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => QuestionnaireWidget(
                      Question: DummyDb.meeshoHelpQueries[index]),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: DummyDb.meeshoHelpQueries.length))
        ],
      ),
    );
  }
}
