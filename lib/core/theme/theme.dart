import 'package:commits_list_test/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Namespace for the Brun [ThemeData].
class BrunTheme {
  /// Standard `ThemeData` for Brun UI.
  static ThemeData get standard {
    return ThemeData(
      primaryColor: AppColors.primary,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      textTheme: GoogleFonts.montserratTextTheme(),
      dialogBackgroundColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.white,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme();
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size(338, 65),
        backgroundColor: AppColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
