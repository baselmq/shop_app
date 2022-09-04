import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/pages/login/login.dart';
import 'package:e_commerce/util/path_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 65.h),
              const TextCustom(
                text: 'TOKOTO',
                color: Colors.deepOrangeAccent,
              ),
              const SubTextCustom(text: 'Welcome to Tokoto, Let’s shop!'),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 45.h),
                child: Image.asset(PathImages.splash1),
              ),
              SizedBox(height: 40.h),
              ElevatedButtonCustom(
                text: 'Continue',
                width: double.infinity,
                height: 45,
                onClick: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
