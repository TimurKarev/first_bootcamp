import 'package:first_bootcamp/screens/squares/squares_page.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
    );
  }
}
