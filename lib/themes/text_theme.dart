import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// NAME       SIZE   WEIGHT   SPACING  2018 NAME
/// display4   112.0  thin     0.0      headline1
/// display3   56.0   normal   0.0      headline2
/// display2   45.0   normal   0.0      headline3
/// display1   34.0   normal   0.0      headline4
/// headline   24.0   normal   0.0      headline5
/// title      20.0   medium   0.0      headline6
/// subhead    16.0   normal   0.0      subtitle1
/// body2      14.0   medium   0.0      body1 (bodyText1)
/// body1      14.0   normal   0.0      body2 (bodyText2)
/// caption    12.0   normal   0.0      caption
/// button     14.0   medium   0.0      button
/// subtitle   14.0   medium   0.0      subtitle2
/// overline   10.0   normal   0.0      overline
///
final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
    fontSize: 112.0,
    fontWeight: FontWeight.bold,
  ),
  headline2: GoogleFonts.montserrat(
    fontSize: 56.0,
    fontWeight: FontWeight.bold,
  ),
  headline3: GoogleFonts.montserrat(
    fontSize: 45.0,
    fontWeight: FontWeight.bold,
  ),
  headline4: GoogleFonts.montserrat(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  ),
  headline5: GoogleFonts.montserrat(
    fontSize: 24.0,
  ),
  headline6: GoogleFonts.montserrat(
    fontSize: 20.0,
  ),
  subtitle1: GoogleFonts.montserrat(
    fontSize: 16.0,
  ),
  subtitle2: GoogleFonts.montserrat(
    fontSize: 16.0,
  ),
  bodyText1: GoogleFonts.montserrat(
    fontSize: 14.0,
  ),
  bodyText2: GoogleFonts.montserrat(
    fontSize: 14.0,
  ),
  caption: GoogleFonts.montserrat(
    fontSize: 12.0,
  ),
  button: GoogleFonts.montserrat(
    fontSize: 16.0,
  ),
  overline: GoogleFonts.montserrat(
    fontSize: 10.0,
  ),
);
