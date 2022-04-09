import 'package:first_bootcamp/assets/strings/strings_app.dart';
import 'package:first_bootcamp/screens/async_request/async_request_route.dart';
import 'package:first_bootcamp/screens/codelab/codelab_route.dart';
import 'package:first_bootcamp/screens/colored_list/colored_list_route.dart';
import 'package:first_bootcamp/screens/squares/squares_page_route.dart';
import 'package:first_bootcamp/screens/start_page/widgets/start_page_list_tile.dart';
import 'package:first_bootcamp/theme/colors_app.dart';
import 'package:first_bootcamp/theme/text_styles_app.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  static final List<_PageButtonPayload> _titles = [
    _PageButtonPayload(
      StringsApp.mainScreenTaskItemFirstText,
      SquaresPageRoute(),
    ),
    _PageButtonPayload(
      StringsApp.mainScreenTaskItemSecondText,
      ColoredListRoute(),
    ),
    _PageButtonPayload(
      StringsApp.mainScreenTaskItemThirdText,
      CodelabRoute(),
    ),
    _PageButtonPayload(
      StringsApp.mainScreenTaskItemFourthText,
      AsyncRequestRoute(),
    ),
  ];

  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primeBlue,
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            StringsApp.mainScreenAppBarTitle,
            style: TextStylesApp.headerTextStyle.andColor(ColorsApp.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 14.0,
        ),
        child: ListView.builder(
          itemCount: _titles.length,
          itemBuilder: (context, index) => StartPageListTile(
            title: _titles[index].title,
            onTap: () => _onTileTap(context, _titles[index].route),
          ),
        ),
      ),
    );
  }

  void _onTileTap(BuildContext context, MaterialPageRoute page) {
    Navigator.push(context, page);
  }
}

class _PageButtonPayload {
  final String title;
  final MaterialPageRoute route;

  const _PageButtonPayload(this.title, this.route);
}
