// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color bgColor = Color.fromARGB(255, 63, 113, 189);
  static Color mainColor = Color.fromARGB(255, 13, 28, 94);
  static Color accentColor = Colors.blueGrey;

  static List<Color> cardColors = [
    Colors.white,
    Colors.red.shade100,
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.pink.shade100,
    Colors.blueGrey.shade100,
  ];

  static TextStyle mainTitle = GoogleFonts.vt323(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mainContent = GoogleFonts.vt323(
    fontSize: 22.0,
    fontWeight: FontWeight.normal,
  );
  static TextStyle dataTitle = GoogleFonts.vt323(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle pixelated = GoogleFonts.pressStart2p(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );
}
