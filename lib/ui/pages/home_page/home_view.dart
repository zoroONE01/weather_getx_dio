import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_project/ui/constants/app_colors.dart';
import 'package:getx_project/ui/constants/app_paths.dart';
import 'package:getx_project/ui/pages/home_page/home_controller.dart';
import 'package:getx_project/ui/widgets/item_detail.dart';
import 'package:getx_project/ui/widgets/item_forecast.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  List forecasts = <ItemForecast>[
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
    const ItemForecast(time: 'now', iconPath: AppPaths.icSunWind, temp: '20'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(gradient: AppColors.gradientTanCrayolaSandyBrown),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 10),
            child: Column(
              children: const [
                AppBar(),
                SizedBox(
                  height: 10,
                ),
                TopHome(),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, -0.63),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 45),
                      height: 2,
                      decoration:
                          const BoxDecoration(color: AppColors.tanCrayola),
                    ),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: AppColors.spaceCadet,
                          borderRadius: BorderRadius.circular(10),
                          // const UnderlineTabIndicator(
                          //   borderSide:
                          //       BorderSide(width: 5, color: AppColors.spaceCadet),
                          //   insets: EdgeInsets.symmetric(horizontal: 50)
                        ),
                        indicatorWeight: 20,
                        indicatorPadding: const EdgeInsets.only(
                            top: 30, left: 52, right: 52, bottom: 4),
                        labelStyle: Theme.of(context).textTheme.headline4,
                        labelColor: AppColors.spaceCadet,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelStyle:
                            Theme.of(context).textTheme.headline5,
                        unselectedLabelColor: AppColors.tanCrayola,
                        // automaticIndicatorColorAdjustment: true,
                        tabs: const [
                          Text(
                            'Yesterday',
                            // style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Today',
                            // style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Tomorrow',
                            // style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            ListView.builder(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    forecasts[index],
                                itemCount: forecasts.length),
                            ListView.builder(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    forecasts[index],
                                itemCount: forecasts.length),
                            ListView.builder(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    forecasts[index],
                                itemCount: forecasts.length),
                          ]),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopHome extends StatelessWidget {
  const TopHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<HomeController>(tag: 'home_controller');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stockholm, Sweden',
            style: Theme.of(context).textTheme.headline2,
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
          Text(
            'Tue, Jun 30',
            style: Theme.of(context).textTheme.subtitle1,
            maxLines: 1,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppPaths.icSunRain,
                height: 150,
                width: 150,
              ),
              const SizedBox(width: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        '19',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Rainy',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '°',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'C',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: const <ItemDetail>[
              ItemDetail(
                  iconPaths: AppPaths.icRainFall,
                  title: 'Rain Fall',
                  desc: '3cm'),
              ItemDetail(
                iconPaths: AppPaths.icWind,
                title: 'Wind',
                desc: '19km/h',
              ),
              ItemDetail(
                  iconPaths: AppPaths.icHumidity,
                  title: 'Humidity',
                  desc: '64%'),
            ],
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        SvgPicture.asset(
          AppPaths.icSearch,
          height: 36,
          width: 36,
        ),
        SvgPicture.asset(
          AppPaths.icMore,
          height: 36,
          width: 36,
        ),
      ],
    );
  }
}
