import 'package:first_bootcamp/assets/strings/strings_app.dart';
import 'package:first_bootcamp/screens/squares/widgets/grid_body.dart';
import 'package:first_bootcamp/theme/colors_app.dart';
import 'package:first_bootcamp/theme/text_styles_app.dart';
import 'package:first_bootcamp/utils/utils_app.dart';
import 'package:flutter/material.dart';

class SquaresPage extends StatefulWidget {
  const SquaresPage({Key? key}) : super(key: key);

  @override
  State<SquaresPage> createState() => _SquaresPageState();
}

class _SquaresPageState extends State<SquaresPage> {
  final List<Color> _colors = [];

  @override
  void initState() {
    _changeColors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsApp.mainScreenTaskItemFirstText,
          style: TextStylesApp.headerTextStyle.andColor(ColorsApp.black),
        ),
        foregroundColor: ColorsApp.black,
        backgroundColor: ColorsApp.primeBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 31.0,
          vertical: 82.0,
        ),
        child: Center(
          child: GridBody(colorList: _colors),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _changeColors();
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

  void _changeColors() {
    _colors.clear();

    for (int i = 0; i < 4; i++) {
      _colors.add(
        UtilsApp.getRandomColor(),
      );
    }
  }
}
