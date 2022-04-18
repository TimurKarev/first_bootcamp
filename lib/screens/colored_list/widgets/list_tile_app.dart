import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  const ListTileApp({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 71.0,
        width: double.infinity,
        color: color,
      ),
    );
  }
}
