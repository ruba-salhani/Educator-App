import 'package:flutter/material.dart';

abstract class AppTheme {
  static get lightTheme {
    return ThemeData(
      //primaryColor: const Color(0xff0D1724),
      //scaffoldBackgroundColor: Colors.grey[300],
      primarySwatch: Colors.deepPurple,
      // appBarTheme: const AppBarTheme(
      //   elevation: 6.0,
      // ),
      iconTheme: const IconThemeData(color: Colors.white),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(315, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
