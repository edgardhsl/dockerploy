import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var themeDark = ThemeData.dark().copyWith(
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      //filled: true,
      border: OutlineInputBorder(),
    ),
    canvasColor: const Color(0xFF222D45),
    dropdownMenuTheme: const DropdownMenuThemeData(
      textStyle: TextStyle(color: Colors.white),
    ),
    textTheme: GoogleFonts.openSansTextTheme().copyWith(
        bodyMedium: const TextStyle(color: Colors.white),
        bodySmall: const TextStyle(color: Colors.white),
        bodyLarge: const TextStyle(color: Colors.white)),
    scaffoldBackgroundColor: const Color(0xFF121B2A),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFEFEFF0),
        onPrimary: Color(0xFFFFFF00),
        secondary: Color(0x00222D45),
        onSecondary: Color(0xFFFFFFFF),
        error: Color(0xFFD90429),
        onError: Color(0xFFFFFFFF),
        background: Color(0xFF0B141F),
        onBackground: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFEFEFF0),
        surface: Color(0xFF222D45),
        onSurface: Color(0xFFFFFFFF)));
