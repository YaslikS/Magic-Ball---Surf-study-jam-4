import 'package:flutter/material.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightBlue),
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.white),
      backgroundColor: AppColors.background,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      )),
  listTileTheme: ListTileThemeData(iconColor: AppColors.white),
  textTheme: TextTheme(
      displaySmall: TextStyle(
        color: AppColors.white,
        fontSize: 30,
      ),
      labelMedium: TextStyle(
        color: AppColors.white,
        fontSize: 15,
      ),
      labelLarge: TextStyle(
        color: AppColors.textGrey,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: AppColors.lightBlue,
        fontSize: 15,
      )),
);
