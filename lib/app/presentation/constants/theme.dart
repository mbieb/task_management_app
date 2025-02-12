import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int themeLight = 1;
const int themeDark = 2;

final ThemeData cThemeLight = ThemeData(
  primarySwatch: Colors.blue,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    titleTextStyle: cTextBold,
    iconTheme: const IconThemeData(color: cColorGrey2),
    centerTitle: false,
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    secondary: cColorSecondary,
    onPrimary: cColorPrimary,
    primary: Colors.black,
  ),
  textTheme: const TextTheme(
    labelSmall: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    labelMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    labelLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    titleSmall: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
    titleMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
    titleLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
    displaySmall: TextStyle(
        fontSize: 10,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    displayMedium: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    bodySmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    bodyLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: cColorSecondary),
    headlineSmall: TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
    headlineMedium: TextStyle(
        fontSize: 32,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
    headlineLarge: TextStyle(
        fontSize: 40,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: cColorSecondary),
  ),
);

final ThemeData cThemeDark = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.grey,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    titleTextStyle: cTextBold.copyWith(color: cColorWhite),
    iconTheme: const IconThemeData(color: cColorGrey4),
    centerTitle: false,
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
  ).copyWith(
    secondary: cColorPurple,
    onPrimary: cColorWhite,
    surface: cColorSecondary,
  ),
  textTheme: TextTheme(
    labelSmall: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    labelMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    labelLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    titleSmall: const TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
    titleMedium: const TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
    titleLarge: const TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
    displaySmall: TextStyle(
        fontSize: 10,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    displayMedium: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    bodySmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    bodyLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Colors.grey[300]),
    headlineSmall: const TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
    headlineMedium: const TextStyle(
        fontSize: 32,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
    headlineLarge: const TextStyle(
        fontSize: 40,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white),
  ),
);
