import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

//Light Mode
const primaryColor = Color(0xFFFE724C);
const subColor = Color(0xFF9EA1B1);
const blackColor = Colors.black;
const whiteColor = Colors.white;
const yellowColor = Color(0xffFFC529);

const primaryBackgroundColor = Color(0xFFFFFFFF);
const primaryTextColor = Color(0xFF000000);

//dark Mode
const darkBackgroundColor = Color(0xFF2D2D3A);
const subTextColor = Color(0xFFADADB8);
const subBackgroundColor = Color(0xFF393948);
const lowColor = Color(0xFF474755);

TextTheme defaultText = TextTheme(
  headline1: GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.w700),
  headline2: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w600),
  headline3: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),
  headline4: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
  headline5: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
  bodyText1: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
  bodyText2: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
  subtitle1: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
  subtitle2: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
  button: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400),
  caption: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w400),
);

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: primaryBackgroundColor,
  drawerTheme: const DrawerThemeData(backgroundColor: primaryBackgroundColor),
  textTheme: TextTheme(
    // headline1: defaultText.headline1!,
    headline2: defaultText.headline2!.apply(color: primaryTextColor),
    headline3: defaultText.headline3!.apply(color: primaryTextColor),
    headline4: defaultText.headline4!.apply(color: primaryTextColor),
    headline5: defaultText.headline5!.apply(color: subColor),
    headline6: defaultText.headline6!.apply(color: whiteColor),
    // bodyText1: defaultText.bodyText1!,
    bodyText2: defaultText.bodyText2!.apply(color: primaryTextColor),
    subtitle1: defaultText.subtitle1!.apply(color: primaryTextColor),
    subtitle2: defaultText.subtitle2!.apply(color: primaryTextColor),
    button: defaultText.button!,
    caption: defaultText.caption!.apply(color: primaryTextColor),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkBackgroundColor,
  drawerTheme: const DrawerThemeData(backgroundColor: darkBackgroundColor),
  textTheme: TextTheme(
    // headline1: defaultText.headline1!,
    headline2: defaultText.headline2!.apply(color: whiteColor),
    headline3: defaultText.headline3!.apply(color: whiteColor),
    headline4: defaultText.headline4!.apply(color: whiteColor),
    headline5: defaultText.headline5!.apply(color: subTextColor),
    headline6: defaultText.headline6!.apply(color: whiteColor),
    // bodyText1: defaultText.bodyText1!,
    bodyText2: defaultText.bodyText2!.apply(color: const Color(0xFF9796A1)),
    subtitle1: defaultText.subtitle1!.apply(color: whiteColor),
    subtitle2: defaultText.subtitle2!.apply(color: subTextColor),
    button: defaultText.button!,
    caption: defaultText.caption!.apply(color: whiteColor),
  ),
);
