import 'package:e_commerce/util/path_icons.dart';
import 'package:e_commerce/util/path_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipOval(
            child: Image.asset(
              PathImages.profileImage,
            ),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFF5F6F9),
                shape: const CircleBorder(),
                side: const BorderSide(color: Colors.white),
                padding: EdgeInsets.all(13.w),
              ),
              child: SvgPicture.asset(PathIcons.cameraIcon),
            ),
          )
        ],
      ),
    );
  }
}
