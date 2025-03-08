import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConstants {
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color secondaryTextColor = Color(0xFF4B4B4B);
  static const Color inputBackgroundColor = Color(0xFFE6E6E6);
  static const Color placeholderTextColor = Color(0xFF646464);

  static TextStyle get montserratBold => GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 33,
        color: primaryTextColor,
        height: 1.4,
      );

  static TextStyle get montserratRegular => GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: primaryTextColor,
        height: 1.4,
      );

  static TextStyle get montserratSmall => GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        color: secondaryTextColor,
        height: 1.4,
      );

  static TextStyle get buttonTextStyle => GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 11,
        color: primaryTextColor,
        height: 1.4,
      );
}