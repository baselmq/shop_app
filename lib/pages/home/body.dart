import 'package:e_commerce/pages/home/components/discount_header.dart';
import 'package:e_commerce/pages/home/components/popular_products.dart';
import 'package:e_commerce/pages/home/components/special_discount.dart';
import 'package:e_commerce/pages/home/components/categories.dart';
import 'package:e_commerce/pages/home/components/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);
  static const String id = 'BodyHomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHeader(),
                SizedBox(height: 25.h),
                const DiscountHeader(),
                SizedBox(height: 40.h),
                const Categories(),
                SizedBox(height: 25.h),
                const SpecialDiscount(),
                SizedBox(height: 25.h),
                const PopularProducts()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
