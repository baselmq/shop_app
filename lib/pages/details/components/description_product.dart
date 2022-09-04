import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({Key? key, required this.product}) : super(key: key);
  final ModelPopularProducts product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: TextCustom(
            text: product.title,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 64.w,
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: product.isFavorite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              PathIcons.heartIcon2,
              color: product.isFavorite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.w, right: 60.w),
          child: SubTextCustom(
            text: product.description,
            fontSize: 13,
            maxLines: 3,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
          child: Row(
            children: [
              const TextCustom(
                text: 'See More Detail',
                fontSize: 13,
                color: Colors.deepOrangeAccent,
              ),
              SizedBox(width: 3.w),
              Icon(
                Icons.arrow_forward_ios,
                size: 12.sp,
                color: Colors.deepOrangeAccent,
              )
            ],
          ),
        )
      ],
    );
  }
}
