import 'package:first_bootcamp/async_request/async_request.dart';
import 'package:first_bootcamp/codelab/codelab_page.dart';
import 'package:first_bootcamp/colored_list/colored_list_page.dart';
import 'package:first_bootcamp/squares/squares_page.dart';
import 'package:first_bootcamp/start_page/widgets/start_page_list_tile.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  static const titles = [
    "4 квадрата",
    "Цветной список",
    "Codelab",
    "Асинхронный запрос",
  ];

  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            "Главная",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 14.0,
        ),
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) => StartPageListTile(
            title: titles[index],
            onTap: () => _onTileTap(context, index),
          ),
        ),
      ),
    );
  }

  _onTileTap(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SquaresPage()));
    }
    if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ColoredListPage()));
    }
    if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CodelabPage()));
    }
    if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AsyncRequestPage()));
    }
  }
}
