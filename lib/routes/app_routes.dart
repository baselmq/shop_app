import 'package:e_commerce/home.dart';
import 'package:e_commerce/pages/details/body.dart';
import 'package:e_commerce/pages/home/body.dart';
import 'package:e_commerce/pages/login/forgetPassword/forget_password.dart';
import 'package:e_commerce/pages/login/login.dart';
import 'package:e_commerce/pages/login/loginSuccess/login_success.dart';
import 'package:e_commerce/pages/register/completeProfile/complete_profile.dart';
import 'package:e_commerce/pages/register/otp/otp_verification.dart';
import 'package:e_commerce/pages/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import '../pages/register/register.dart';

class AppRouters {
  static Map<String, WidgetBuilder> routes = {
    HomePage.id: (context) => const HomePage(),
    RegisterPage.id: (context) => const RegisterPage(),
    ForgetPassword.id: (context) => const ForgetPassword(),
    LoginSuccess.id: (context) => const LoginSuccess(),
    CompleteProfile.id: (context) => const CompleteProfile(),
    OTPVerification.id: (context) => const OTPVerification(),
    LoginPage.id: (context) => const LoginPage(),
    SplashScreen.id: (context) => const SplashScreen(),
    BodyHomePage.id: (context) => const BodyHomePage(),
    BodyDetailsPage.id: (context) => const BodyDetailsPage(),
  };
}
