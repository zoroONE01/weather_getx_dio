import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paths.dart';

class ItemForecast extends StatelessWidget {
  final String time;
  final String iconPath;
  final String temp;

  const ItemForecast({
    Key? key, required this.time, required this.iconPath, required this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.white30,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Image.asset(
              iconPath,
              height: 42,
              width: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  temp,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  '°',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ]),
    );
  }
}
