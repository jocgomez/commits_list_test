import 'package:commits_list_test/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Namespace for the Brun [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for Brun UI.
  static ThemeData get standard {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: GoogleFonts.montserratTextTheme(),
    );
  }
}
