import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/home.dart';
import 'package:e_commerce/util/path_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({Key? key}) : super(key: key);
  static const String id = 'LoginSuccess';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        title: 'Login Success',
        fillIcon: true,
        icon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20.r,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50.h),
          Image.asset(PathImages.success),
          SizedBox(height: 60.h),
          const TextCustom(text: 'Login Success'),
          SizedBox(height: 70.h),
          ElevatedButtonCustom(
            text: 'Back to Home',
            width: 200,
            height: 45,
            onClick: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
        ],
      ),
    );
  }
}
