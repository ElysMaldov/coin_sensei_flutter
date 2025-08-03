import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF4BC355),
    brightness: Brightness.light,
  ),

  textTheme: GoogleFonts.plusJakartaSansTextTheme(),
  buttonTheme: ButtonThemeData(),
);
