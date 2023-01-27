import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kumparan_clone/src/common/colors.dart';

ThemeData themeLight(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primaryIconTheme: const IconThemeData(
      color: ColorLight.fontTitle,
      size: 20,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: ColorLight.primary,
      onPrimary: ColorLight.primary,
      secondary: ColorLight.secondary,
      onSecondary: ColorLight.secondary,
      error: ColorLight.error,
      onError: ColorLight.error,
      background: ColorLight.background,
      onBackground: ColorLight.background,
      surface: ColorLight.background,
      onSurface: ColorLight.background,
    ),
    cardColor: ColorLight.card,
    disabledColor: ColorLight.disabledButton,
    hintColor: ColorLight.fontSubtitle,
    indicatorColor: ColorLight.primary,
    iconTheme: const IconThemeData(color: ColorLight.fontTitle),
    primaryColor: ColorLight.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorLight.primary,
    ),
    scaffoldBackgroundColor: ColorLight.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    primaryIconTheme: const IconThemeData(
      color: ColorDark.fontTitle,
      size: 20,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ColorDark.primary,
      onPrimary: ColorDark.primary,
      secondary: ColorDark.secondary,
      onSecondary: ColorDark.secondary,
      error: ColorDark.error,
      onError: ColorDark.error,
      background: ColorDark.background,
      onBackground: ColorDark.background,
      surface: ColorDark.background,
      onSurface: ColorDark.background,
    ),
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabledButton,
    hintColor: ColorDark.fontSubtitle,
    indicatorColor: ColorDark.primary,
    iconTheme: const IconThemeData(color: ColorDark.fontTitle),
    primaryColor: ColorDark.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorDark.primary,
    ),
    scaffoldBackgroundColor: ColorDark.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
