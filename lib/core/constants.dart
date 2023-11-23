import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBarTheme getMyAppBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.cyan,
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
  );
}

var kTextStyle = TextStyle(
  fontFamily: 'Amiri',
  fontWeight: FontWeight.normal,
  color: Colors.white,
);
var kWhiteTextStyle = TextStyle(
  fontFamily: 'Amiri',
  fontWeight: FontWeight.normal,
  color: Colors.white,
);
const PRIMARY_COLOR =
// Color(0xFFEA1556);
Colors.cyan;