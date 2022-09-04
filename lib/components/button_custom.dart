import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.onClick})
      : super(key: key);
  final String text;
  final double width;
  final double height;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.deepOrangeAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          minimumSize: Size(width.w, height.h)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.sp,
          fontFamily: 'Muli',
        ),
      ),
    );
  }
}
