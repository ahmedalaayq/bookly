import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  scaffoldBackgroundColor: primaryColor,
  fontFamily: GoogleFonts.montserrat().fontFamily,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: Styles.textStyle18.copyWith(color: primaryColor),
    filled: true,
    fillColor: const Color(0xFFF9FAFA),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
      borderRadius: BorderRadius.circular(4),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
      borderRadius: BorderRadius.circular(4),
    ),
    errorStyle: Styles.textStyle18.copyWith(color: primaryColor),
  ),
);
