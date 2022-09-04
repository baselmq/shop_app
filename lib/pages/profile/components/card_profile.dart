import 'package:e_commerce/components/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProfile extends StatelessWidget {
  const CardProfile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPress})
      : super(key: key);
  final String title;
  final String icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18.w),
          padding: EdgeInsets.symmetric(vertical: 2.h),
          decoration: BoxDecoration(
            color: const Color(0xfff5f6f9),
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: ListTile(
            onTap: onPress,
            minVerticalPadding: 0,
            // horizontalTitleGap: 0.0,
            // contentPadding: const EdgeInsets.all(0),
            minLeadingWidth: 22.w,
            leading: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: SvgPicture.asset(
                icon,
                width: 20.w,
                color: Colors.deepOrangeAccent,
              ),
            ),
            title: SubTextCustom(
              text: title,
              color: Colors.deepOrangeAccent,
              textAlign: TextAlign.start,
              fontSize: 15,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
        SizedBox(height: 18.h)
      ],
    );
  }
}
