import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

//import 'package:sizes/sizes_helpers.dart';
//   Size displaySize(BuildContext context) {
//   debugPrint('Size = ' + MediaQuery.of(context).size.toString());
//   return MediaQuery.of(context).size;
// }
// double displayWidth(BuildContext context) {
//   debugPrint('Width = ' + displaySize(context).width.toString());
//   return displaySize(context).width;
// }
abstract class AppTheme {
  static get lightTheme {
    return ThemeData(
      //primaryColor: const Color(0xff0D1724),
      //scaffoldBackgroundColor: Colors.grey[300],
      primarySwatch: AppColors.primary,

      appBarTheme: const AppBarTheme(
        //backgroundColor: Colors.transparent,
        //elevation: 6.0,
        titleTextStyle: TextStyle(
          //color: Colors.white,
          //fontSize: displayWidth(context) * 0.1,
          //fontFamily: "Hacen",
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        splashColor: Colors.white.withOpacity(0.25),
        backgroundColor: AppColors.secondary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      textTheme: const TextTheme(
          // bodyText1:
          //     TextStyle(color: Colors.white, fontFamily: "Poppins_Regular"),
          // bodyText2: TextStyle(
          //     color: Colors.white, fontSize: 12, fontFamily: "Poppins_SemiBold"),
          // headline5: TextStyle(
          //     color: Color(0xff4048BF),
          //     fontSize: 12,
          //     fontFamily: "Poppins_SemiBold"),
          // headline2: TextStyle(
          //     color: Colors.white, fontSize: 24, fontFamily: "Poppins_SemiBold"),
          // headline3: TextStyle(
          //     color: Color(0xff707070),
          //     fontSize: 12,
          //     fontFamily: "Poppins_Regular"),
          // headline4: TextStyle(
          //     color: Colors.white, fontSize: 15, fontFamily: "Poppins_Regular"),
          // headline6: TextStyle(
          //     color: Colors.white, fontSize: 16, fontFamily: "Poppins_SemiBold"),

          ),
    );
  }
}
