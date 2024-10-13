import 'package:flutter/material.dart';

final Color primaryColor = const Color.fromARGB(255, 198, 58, 58);

final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.light,
);

final ThemeData darkTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 20, 84, 196),
  brightness: Brightness.dark,
);