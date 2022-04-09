import 'package:first_bootcamp/theme/colors_app.dart';
import 'package:first_bootcamp/theme/text_styles_app.dart';
import 'package:flutter/material.dart';

class StartPageListTile extends StatelessWidget {
  const StartPageListTile({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: const BoxDecoration(
            color: ColorsApp.primeBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style:
                      TextStylesApp.normalTextStyle.andColor(ColorsApp.black),
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
