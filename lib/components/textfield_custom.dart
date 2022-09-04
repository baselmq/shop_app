import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldsCustom extends StatelessWidget {
  const TextFieldsCustom({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.suffixIcon,
    // this.focusNode,
    this.iconWidth = 18,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.controller,
    this.onPressIcon,
    this.obscureText = false,
  }) : super(key: key);
  final String labelText;
  final String hintText;
  final String suffixIcon;
  final double iconWidth;
  // final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final Function()? onPressIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        // focusNode: focusNode,
        cursorColor: Colors.deepOrangeAccent,
        validator: validator,
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Muli',
          ),
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // labelStyle: TextStyle(
          //     color: focusNode.hasFocus ? Colors.deepOrange : Colors.grey),
          label: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text(
              labelText,
              style: const TextStyle(
                fontFamily: 'Muli',
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5.w),
            borderRadius: BorderRadius.circular(25.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.deepOrangeAccent, width: 2.0.w),
            borderRadius: BorderRadius.circular(25.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0.w),
            borderRadius: BorderRadius.circular(25.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0.w),
            borderRadius: BorderRadius.circular(25.r),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 30.w),
          prefixIcon: Container(width: 0),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: InkWell(
              onTap: onPressIcon,
              child: SvgPicture.asset(
                suffixIcon,
                width: iconWidth.w,
                // color:
                //     focusNode.hasFocus ? Colors.deepOrangeAccent : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
