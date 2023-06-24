import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var themeCommon = ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyMedium: const TextStyle(color: Colors.white),
        bodySmall: const TextStyle(color: Colors.white),
        bodyLarge: const TextStyle(color: Colors.white)),
    inputDecorationTheme:
        const InputDecorationTheme(border: OutlineInputBorder()));
