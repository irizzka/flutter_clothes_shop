import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget emailInput() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Email or Phone',
      labelStyle: GoogleFonts.overtheRainbow(
        fontSize: 26,
      ),
    ),
    textAlign: TextAlign.center,
    validator: (value) =>
        value.isEmpty ? 'Email or phone can\'t be empty' : null,
  );
}
