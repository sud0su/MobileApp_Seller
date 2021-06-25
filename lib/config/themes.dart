import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_app/utils/color_generator.dart';

class AppThemes {
  AppThemes._();
  static final ThemeData lightTheme = ThemeData(
    textTheme: GoogleFonts.openSansTextTheme(),
    primarySwatch: createMaterialColor(Color(0xFF018749)),
  );
}
