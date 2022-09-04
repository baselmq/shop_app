import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          SizedBox(
            height: 42.h,
            width: 210.w,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                isDense: true,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24.sp,
                  color: Colors.blue,
                ),
                hintText: 'Search Product',
                hintStyle: const TextStyle(
                  fontFamily: 'Muli',
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          CircleAvatar(
            maxRadius: 22.r,
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: SvgPicture.asset(
              PathIcons.cartIcon,
              width: 25,
            ),
          ),
          SizedBox(width: 10.w),
          Stack(
            children: [
              CircleAvatar(
                maxRadius: 22.r,
                backgroundColor: Colors.grey.withOpacity(0.1),
                child: SvgPicture.asset(
                  PathIcons.bell,
                  width: 18,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 13.w,
                  height: 11.5.h,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
