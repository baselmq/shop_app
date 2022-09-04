import 'package:e_commerce/components/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountHeader extends StatelessWidget {
  const DiscountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 80.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: const Color(0xff4a3298),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SubTextCustom(
              text: 'A Summer Surprise',
              color: Colors.white,
              fontSize: 13,
            ),
            TextCustom(
              text: 'Cashback 20%',
              color: Colors.white,
              fontSize: 24,
            ),
          ],
        ),
      ),
    );
  }
}
