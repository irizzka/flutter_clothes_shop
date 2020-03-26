import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget passwordInput(String text) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: text,
      labelStyle: GoogleFonts.overtheRainbow(
        fontSize: 26,
      ),
    ),
    textAlign: TextAlign.center,
    obscureText: true,
    validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
  );
}
