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
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: ListTile(
  //       tileColor: Theme.of(context).primaryColor,
  //       iconColor: Colors.black,
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(6.0),
  //         ),
  //       ),
  //       contentPadding: const EdgeInsets.symmetric(
  //         horizontal: 21.0,
  //         vertical: 0.0,
  //       ),
  //       title: Text(
  //         title,
  //         style: Theme.of(context).textTheme.headline2,
  //       ),
  //       trailing: const Icon(Icons.arrow_forward),
  //       onTap: onTap,
  //     ),
  //   );
  // }
}
