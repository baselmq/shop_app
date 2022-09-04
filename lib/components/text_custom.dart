import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// *** ------------------- TextCustomSubTitle ------------------- ***
class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    required this.text,
    this.fontFamily = 'Muli',
    this.fontSize = 29,
    this.fontWeight = FontWeight.w600,
    this.color,
  }) : super(key: key);
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

// *** ------------------- TextCustomSubTitle ------------------- ***
class SubTextCustom extends StatelessWidget {
  const SubTextCustom({
    Key? key,
    required this.text,
    this.fontFamily = 'Muli',
    this.fontSize = 14,
    this.fontWeight,
    this.color,
    this.decoration,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color ?? Colors.grey[600]!,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}

// dynamic subTextStyle({
//   String fontFamily = 'Muli',
//   double fontSize = 14,
//   Color? color,
//   FontWeight? fontWeight,
//   TextDecoration? decoration,
// }) {
//   final TextStyle styleText = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fontSize,
//     color: color ?? Colors.grey[600]!,
//     fontWeight: fontWeight,
//     decoration: decoration,
//   );
//   return styleText;
// }
