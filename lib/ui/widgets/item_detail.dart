import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';

class ItemDetail extends StatelessWidget {
  final String iconPaths;
  final String title;
  final String desc;
  const ItemDetail({
    Key? key, required this.iconPaths, required this.title, required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white36,
          border: Border.all(color: AppColors.white50, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10, bottom: 10, right: 40, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  iconPaths,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              desc,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
