import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    Key? key,
    required this.svgPath,
    this.svgWidth = 15,
    this.backgroundColor,
  }) : super(key: key);
  final String svgPath;
  final double svgWidth;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 19.r,
      backgroundColor: backgroundColor ?? Colors.grey[100],
      child: SvgPicture.asset(
        svgPath,
        width: svgWidth.w,
      ),
    );
  }
}
