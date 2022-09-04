import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/card_social.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/components/textfield_custom.dart';
import 'package:e_commerce/pages/login/forgetPassword/forget_password.dart';
import 'package:e_commerce/pages/login/loginSuccess/login_success.dart';
import 'package:e_commerce/pages/register/register.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  final formKey = GlobalKey<FormState>();
  // FocusNode focusNodeEmail = FocusNode();
  // FocusNode focusNodePassword = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   focusNodeEmail.addListener(() => setState(() {}));
  //   focusNodePassword.addListener(() => setState(() {}));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        title: 'Login',
        fillIcon: false,
        icon: IconButton(
          splashRadius: 20.r,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const TextCustom(text: 'Welcome Back'),
                SizedBox(height: 5.h),
                const SubTextCustom(
                    text:
                        'Sign in with your email and password \nor continue with social media'),
                SizedBox(height: 30.h),
                TextFieldsCustom(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  suffixIcon: PathIcons.user,
                  // focusNode: focusNodeEmail,
                  onSaved: (value) => setState(() => email = value),
                  validator: (value) {
                    const pattern = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                    final RegExp regExp = RegExp(pattern);
                    if (value!.isEmpty || !regExp.hasMatch(value)) {
                      return 'Enter Correct Email';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  obscureText: true,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: PathIcons.lock,
                  // focusNode: focusNodePassword,
                  onSaved: (value) => setState(() => password = value),
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const SubTextCustom(text: 'Remember me'),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ForgetPassword.id);
                      },
                      child: const SubTextCustom(
                          text: 'Forgot Password',
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                ElevatedButtonCustom(
                  text: 'Continue',
                  width: double.infinity,
                  height: 45,
                  onClick: () {
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      formKey.currentState!.save();
                      Navigator.pushNamed(context, LoginSuccess.id);
                    }
                  },
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SocialMediaCard(svgPath: PathIcons.googleIcon),
                    SizedBox(width: 20.w),
                    const SocialMediaCard(
                      svgPath: PathIcons.facebook,
                      svgWidth: 8,
                    ),
                    SizedBox(width: 20.w),
                    const SocialMediaCard(svgPath: PathIcons.twitter),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SubTextCustom(text: 'Don’t have an account? '),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const SubTextCustom(
                        text: 'Sign Up',
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
