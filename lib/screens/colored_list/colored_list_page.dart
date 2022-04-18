import 'package:first_bootcamp/assets/strings/strings_app.dart';
import 'package:first_bootcamp/screens/colored_list/widgets/list_tile_app.dart';
import 'package:first_bootcamp/theme/colors_app.dart';
import 'package:first_bootcamp/utils/utils_app.dart';
import 'package:flutter/material.dart';

class ColoredListPage extends StatefulWidget {
  const ColoredListPage({Key? key}) : super(key: key);

  @override
  State<ColoredListPage> createState() => _ColoredListPageState();
}

class _ColoredListPageState extends State<ColoredListPage> {
  var _coloredList = [];

  @override
  void initState() {
    super.initState();
    _updateList();
  }

  void _updateList() {
    _coloredList.clear();
    _coloredList = List<Color>.generate(1000, (_) => UtilsApp.getRandomColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsApp.mainScreenTaskItemSecondText),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 9.0,
        ),
        child: ListView.builder(
          itemCount: _coloredList.length,
          itemBuilder: (context, index) => ListTileApp(
            color: _coloredList[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _updateList();
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: const Icon(
          Icons.edit,
          color: ColorsApp.black,
        ),
      ),
    );
  }
}
