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
          itemCount: 1000,
          itemBuilder: (context, index) => ListTileApp(
            color: UtilsApp.getRandomColor(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
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
