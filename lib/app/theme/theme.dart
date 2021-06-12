import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NTheme {
  static Color mainColor = Color(0xFF292D36);
  static Color buttonColor = Color(0xFF3474FF);
  static Color whiteColor = Color(0xFFFFFFFF);

  // ignore: non_constant_identifier_names
  static TextStyle titleFont =
      GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600);

  static TextStyle noteTitleFont =
      GoogleFonts.nunito(fontSize: 22, fontWeight: FontWeight.w700);

  static TextStyle noteBodyFont =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600);
}
