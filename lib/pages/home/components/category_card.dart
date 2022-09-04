import 'package:e_commerce/components/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPress,
  }) : super(key: key);
  final String icon;
  final String text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: 55.w,
        child: Column(
          children: [
            Container(
              width: 49.w,
              height: 49.h,
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
              decoration: BoxDecoration(
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(icon),
            ),
            SubTextCustom(
              text: text,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}
