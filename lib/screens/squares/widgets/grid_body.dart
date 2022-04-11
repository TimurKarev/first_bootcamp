import 'package:first_bootcamp/screens/squares/widgets/square.dart';
import 'package:flutter/material.dart';

class GridBody extends StatelessWidget {
  const GridBody({
    Key? key,
    required this.colorList,
  }) : super(key: key);

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: colorList.map((color) => Square(color: color)).toList(),
    );
  }
}
