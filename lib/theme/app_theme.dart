import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, //Modern Flutter app use Material 3
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors
          .primaryColor, //contorls main app color: generates a complete color palatte from that single color.
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor, //custom scaffold

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor, //sets background color
      foregroundColor: Colors.white, //sets text color
      centerTitle: true, // makes title in center
      elevation: 2, //controls the shadow depth below the AppBar
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        //creates a style for TextButton
        foregroundColor: AppColors.primaryColor,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.surfaceColor,
        side: const BorderSide(
          //defines outline border
          color: AppColors.primaryColor, //border color
          width: 2, //border thickness in pixels
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    cardTheme: CardThemeData(
      color: AppColors.surfaceColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
        ),
    ),

    textTheme: TextTheme(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      titleLarge: GoogleFonts.poppins(
        fontSize: 20, 
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        ),
        bodyLarge: GoogleFonts.poppins(
        fontSize: 16, 
        color: AppColors.textPrimary,
        ),
        
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          color: AppColors.textSecondary,
        ),

        bodySmall: GoogleFonts.poppins(
          fontSize: 12,
          color: AppColors.textSecondary,
        ),

        labelLarge: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
    ),
  );

  //dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.dark, //tells flutter this is a dark theme,
    //it automatically adjuts default text colors, icon colors, and other defaults to work on dark backgrounds.

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),

    scaffoldBackgroundColor: const Color(0xFF121212),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 2,
    ),

    cardTheme: CardThemeData(
      color: const Color(0xFF1E1E1E),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    textTheme: TextTheme(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),

      titleLarge: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        color: Colors.white70,
      ),

      bodySmall: GoogleFonts.poppins(
        fontSize: 12,
        color: Colors.white60,
      ),

      labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
