import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget(
    {required String txt,
    double fontsize = 10,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white,
    TextAlign? tetxAlign = TextAlign.center}) {
  return Text(
    txt,
    style: GoogleFonts.caudex(
        fontSize: fontsize, fontWeight: fontWeight, color: color),
    textAlign: tetxAlign,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  );
}
