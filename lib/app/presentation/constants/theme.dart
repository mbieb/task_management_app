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
);
