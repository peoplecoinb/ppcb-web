import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get regular => GoogleFonts.rokkitt().copyWith(
        fontWeight: FontWeight.w400,
      );

  static TextStyle get medium => GoogleFonts.rokkitt().copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get semiBold => GoogleFonts.rokkitt().copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bold => GoogleFonts.rokkitt().copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get zendots => GoogleFonts.zenDots().copyWith();

  static TextStyle get2xlPlusStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 28,
    );
  }

  static TextStyle get2xlStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 24,
    );
  }

  static TextStyle getXlStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 20,
    );
  }

  static TextStyle getLgStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 18,
    );
  }

  static TextStyle getBaseStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 16,
    );
  }

  static TextStyle getSmStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 14,
    );
  }

  static TextStyle getXsStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 12,
    );
  }

  static TextStyle getHeadingStyle(TextStyle textStyle) {
    return textStyle.copyWith(
      fontSize: 45,
    );
  }
}
