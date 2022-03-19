import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/src/core/theme/colors.dart';

final appTheme = ThemeData(
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: gray,
    textTheme: CupertinoTextThemeData(textStyle: TextStyle(letterSpacing: 0)),
  ),
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Colors.white, elevation: 0),
  appBarTheme: AppBarTheme(
      color: Colors.white, elevation: 0, iconTheme: IconThemeData(color: gray)),

  hintColor: gray,
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
    hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
  ),
  // This makes the visual density adapt to the platform that you run
  // the app on. For desktop platforms, the controls will be smaller and
  // closer together (more dense) than on mobile platforms.
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    // Used in [PageTitle] (explicitly)
    headline4:
        TextStyle(fontSize: 28, color: gray, fontWeight: FontWeight.w700),
    // Used in [Case Progress] in bottom sheet (explicitly)
    headline3:
        TextStyle(fontSize: 18, color: gray, fontWeight: FontWeight.w700),
    // Used in [TextField.style] (implicitly)
    subtitle1:
        TextStyle(fontSize: 14, color: darkBlue, fontWeight: FontWeight.w500),
    // Used in [PageSubtitle] (explicitly)
    subtitle2:
        TextStyle(fontSize: 13, color: darkGray, fontWeight: FontWeight.w400),
  ),
);
