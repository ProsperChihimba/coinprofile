import 'package:flutter/material.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0xFFf2eddc);

class Styles {
  // Basic app colors
  static Color primaryColor = primary;
  static Color blackColor = const Color(0xFF000000);
  static Color grayColor = const Color(0xFFe4f2dc);

  // Basic app text styles
  static TextStyle normalText = GoogleFonts.montserrat(
      fontSize: AppLayout.getWidth(14),
      fontWeight: FontWeight.w500,
      color: primaryColor);

  static TextStyle headerText = GoogleFonts.montserrat(
      fontSize: AppLayout.getWidth(18),
      fontWeight: FontWeight.w500,
      color: primaryColor);

  static TextStyle headerTextTwo = GoogleFonts.montserrat(
      fontSize: AppLayout.getWidth(16),
      fontWeight: FontWeight.w500,
      color: primaryColor);
}
