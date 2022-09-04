import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/pages/login/loginSuccess/login_success.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/pages/register/otp/components/otp_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);
  static const String id = 'OTPVerification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // * AppBar

      appBar: AppBarCustom(
        title: '',
        fillIcon: true,
        icon: IconButton(
          splashRadius: 20.r,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // * Text

              SizedBox(height: 20.h),
              const TextCustom(text: 'OTP Verification'),
              SizedBox(height: 5.h),
              const SubTextCustom(text: 'We send your code to +1 898 680 ***'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SubTextCustom(text: 'This code will expired in '),
                  SubTextCustom(text: '00:13', color: Colors.deepOrangeAccent),
                ],
              ),
              SizedBox(height: 100.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OTPTextFields(),
                  OTPTextFields(),
                  OTPTextFields(),
                  OTPTextFields(),
                ],
              ),
              SizedBox(height: 120.h),
              ElevatedButtonCustom(
                text: 'Continue',
                width: double.infinity,
                height: 45,
                onClick: () {
                  Navigator.pushNamed(context, LoginSuccess.id);
                },
              ),
              SizedBox(height: 100.h),
              const SubTextCustom(
                text: 'Resend OTP Code',
                decoration: TextDecoration.underline,
              )
            ],
          ),
        ),
      ),
    );
  }
}
