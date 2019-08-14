import 'package:flutter_web/material.dart';

import 'ga_colors.dart';

ThemeData mainTheme = ThemeData(
  // Colors
  primarySwatch: Colors.deepPurple,
  primaryColor: GAColors.deepPurple,
  // accentColor: Colors.blueGrey[100],
  // Text Themes
  fontFamily: 'Poppins',
  primaryTextTheme: primaryTextTheme,
  textTheme: textTheme,
);

Color primaryContrast = Colors.blueGrey[300];
TextTheme primaryTextTheme = TextTheme(
  display4: TextStyle(color: primaryContrast, fontSize: 112, fontWeight: FontWeight.w100),
  display3: TextStyle(color: primaryContrast, fontSize: 56),
  display2: TextStyle(color: primaryContrast, fontSize: 45),
  display1: TextStyle(color: primaryContrast, fontSize: 34),
  headline: TextStyle(color: primaryContrast, fontSize: 24),
  title: TextStyle(color: primaryContrast, fontSize: 20, fontWeight: FontWeight.w500),
  subhead: TextStyle(color: primaryContrast, fontSize: 16),
  body2: TextStyle(color: primaryContrast, fontSize: 14,fontWeight: FontWeight.w500),
  body1: TextStyle(color: primaryContrast, fontSize: 14),
  caption: TextStyle(color: primaryContrast, fontSize: 12),
  button: TextStyle(color: primaryContrast, fontSize: 14,fontWeight: FontWeight.w500),
  subtitle: TextStyle(color: primaryContrast, fontSize: 14,fontWeight: FontWeight.w500),
  overline: TextStyle(color: primaryContrast, fontSize: 10),
);

Color contrast = Color(0xFF110838);
TextTheme textTheme = TextTheme(
  display4: TextStyle(color: contrast, fontSize: 112, fontWeight: FontWeight.w100),
  display3: TextStyle(color: contrast, fontSize: 56),
  display2: TextStyle(color: contrast, fontSize: 45),
  display1: TextStyle(color: contrast, fontSize: 34),
  headline: TextStyle(color: contrast, fontSize: 24),
  title: TextStyle(color: contrast, fontSize: 20, fontWeight: FontWeight.w500),
  subhead: TextStyle(color: contrast, fontSize: 16),
  body2: TextStyle(color: contrast, fontSize: 14,fontWeight: FontWeight.w500),
  body1: TextStyle(color: contrast, fontSize: 14),
  caption: TextStyle(color: contrast, fontSize: 12),
  button: TextStyle(color: contrast, fontSize: 14,fontWeight: FontWeight.w500),
  subtitle: TextStyle(color: contrast, fontSize: 14,fontWeight: FontWeight.w500),
  overline: TextStyle(color: contrast, fontSize: 10),
);