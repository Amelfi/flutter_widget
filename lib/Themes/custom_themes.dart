import 'package:flutter/material.dart';

class CustomThemes {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Primary Color
      primaryColor: primary,
      //AppBar
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: primary,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
      //Icons
      listTileTheme: const ListTileThemeData(iconColor: primary),
      //Card
      cardTheme: const CardTheme(
        // elevation: 5,
        shadowColor: primary,
      ),
      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),  

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: primary
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(

          // textStyle: const TextStyle(color: Colors.white),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: primary,
        ),
      )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Primary Color
      primaryColor: primary,
      //AppBar
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: primary,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
      //Icons
      listTileTheme: const ListTileThemeData(iconColor: primary),
      //Card
      cardTheme: const CardTheme(
        // elevation: 5,
        shadowColor: primary,
      ),
      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),
      //FloutingActionButton
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: primary
      )
      );
}
