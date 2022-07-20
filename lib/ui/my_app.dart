import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/ui/constants/app_colors.dart';
import 'package:getx_project/ui/pages/forecast_page/forecast_binding.dart';
import 'package:getx_project/ui/pages/home_page/home_binding.dart';
import 'package:getx_project/ui/pages/home_page/home_view.dart';

import 'pages/forecast_page/forecast_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => HomeView(),
      //     binding: HomeBinding(),
      //   ),
      //   GetPage(
      //     name: '/forecast',
      //     page: () => const ForecastView(),
      //     binding: ForecastBinding(),
      //   ),
      // ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 72,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          headline4: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.jet,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          headline5: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.tanCrayola,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          headline6: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.manatee,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spanishGray,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: TextStyle(
            fontFamily: 'Inter',
            color: AppColors.spaceCadet,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      // home: Scaffold(
      //   body: HomeView(),
      // ),
      home: HomeView(),
    );
  }
}
