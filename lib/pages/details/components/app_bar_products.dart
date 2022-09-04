import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarProducts extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProducts({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 80.w,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black),
      leading: IconButton(
        splashRadius: 20.r,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: Colors.white,
          ),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18.sp,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            margin: EdgeInsets.symmetric(vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Text(
                  '$rating',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5.w),
                SvgPicture.asset(PathIcons.starIcon),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, AppBar().preferredSize.height);
}
