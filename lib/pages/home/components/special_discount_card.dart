import 'package:e_commerce/components/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialDiscountCard extends StatelessWidget {
  const SpecialDiscountCard({
    Key? key,
    required this.image,
    required this.category,
    required this.numOfBrands,
    required this.onPress,
  }) : super(key: key);
  final String image;
  final String category;
  final int numOfBrands;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: 233.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.r),
          child: Stack(
            children: [
              Image.asset(
                image,
                width: 233.w,
                height: 93.h,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: category,
                      color: Colors.white,
                      fontSize: 16.5.sp,
                    ),
                    SubTextCustom(
                      text: '$numOfBrands Brands',
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
