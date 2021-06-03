
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NTheme {

  static Color mainColor = Color(0xFF313131);
  static Color buttonColor = Color(0xFF626262);
  static Color noteColor = Color(0xFFFFC107);
  static Color whiteColor = Color(0xFFF4F4F4);

  // ignore: non_constant_identifier_names
  static TextStyle titleFont = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600
  );

  static TextStyle noteTitleFont = GoogleFonts.singleDay(
    fontSize: 27
  );

  static TextStyle noteBodyFont = GoogleFonts.singleDay(
    fontSize: 23
  );

}

