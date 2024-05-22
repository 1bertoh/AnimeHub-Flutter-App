import 'package:flutter/material.dart';

const Color red = Colors.red;

const Color lightBg = Color(0xffDEE2E6);

const Color lighAppBar = Color(0xff6C757D);

const Color lighDrawer = Color.fromARGB(230, 217, 217, 217);

const Color _lightText = Color(0xff212529);


ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: lighAppBar,
  ),
  scaffoldBackgroundColor: lightBg,
  brightness: Brightness.light,
  drawerTheme: const DrawerThemeData(backgroundColor: lighDrawer),
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      color: _lightText,
    ),
    bodySmall: TextStyle(
      color: _lightText
    )
  ),
  dividerColor: _lightText,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(red),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.zero,
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
      )
    )
  )
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(red),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.zero,
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            )
        )
    )
);
