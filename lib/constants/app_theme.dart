import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    iconTheme: IconThemeData(color: Colors.black87),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.white,
    accentColor: Colors.black54,
    brightness: Brightness.light,
    cardColor: Colors.grey[500],
    unselectedWidgetColor: Colors.black45,
    focusColor: Colors.black,
    primarySwatch: Colors.blueGrey,
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.black, fontSize: 40, fontWeight: FontWeight.w500),
      headline2: TextStyle(
          color: Colors.black, fontSize: 34, fontWeight: FontWeight.w400),
      headline3: TextStyle(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
      headline4: TextStyle(
          color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
      headline5: TextStyle(
          color: Colors.black, fontSize: 19, fontWeight: FontWeight.w700),
      headline6: TextStyle(
          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
      subtitle1: TextStyle(
          color: Colors.black87, fontSize: 14, fontWeight: FontWeight.normal),
      subtitle2: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );

  static final ThemeData dark = ThemeData(
    primaryColor: Colors.black12,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: AppBarTheme(
      color: Colors.black,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.black,
    accentColor: Colors.white54,
    brightness: Brightness.dark,
    focusColor: Colors.white,
    primarySwatch: Colors.blueGrey,
    textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
        headline2: TextStyle(
            color: Colors.white, fontSize: 34, fontWeight: FontWeight.w400),
        headline3: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        headline4: TextStyle(
            color: Colors.white70, fontSize: 16, fontWeight: FontWeight.bold),
        headline5: TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
        headline6: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
        subtitle1: TextStyle(
            color: Colors.white70, fontSize: 14, fontWeight: FontWeight.normal),
        subtitle2: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
  );
}
