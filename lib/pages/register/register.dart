import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/card_social.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/components/textfield_custom.dart';
import 'package:e_commerce/pages/login/login.dart';
import 'package:e_commerce/pages/register/completeProfile/complete_profile.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static const String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;
  String? password;
  String? confirmPassword;
  final formKey = GlobalKey<FormState>();
  // FocusNode focusNodeEmail = FocusNode();
  // FocusNode focusNodePassword = FocusNode();
  // FocusNode focusNodeConfirmPassword = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   focusNodeEmail.addListener(() => setState(() {}));
  //   focusNodePassword.addListener(() => setState(() {}));
  //   focusNodeConfirmPassword.addListener(() => setState(() {}));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        title: 'Sign Up',
        fillIcon: true,
        icon: IconButton(
          splashRadius: 20.r,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                // * Text
                SizedBox(height: 20.h),
                const TextCustom(text: 'Register Account'),
                SizedBox(height: 5.h),
                const SubTextCustom(
                    text:
                        'Complete your details or continue \nwith social media'),

                SizedBox(height: 25.h),

                // * TextFields
                TextFieldsCustom(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  suffixIcon: PathIcons.mail,
                  iconWidth: 20,
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
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  suffixIcon: PathIcons.lock,
                  // focusNode: focusNodePassword,
                  onSaved: (value) => setState(() => password = value),
                  onChanged: (value) {
                    password = value;
                  },
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  labelText: 'Confirm password',
                  hintText: 'Confirm your password',
                  suffixIcon: PathIcons.lock,
                  // focusNode: focusNodeConfirmPassword,
                  onSaved: (value) => setState(() => confirmPassword = value),
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                  validator: (value) {
                    // if (value!.isEmpty) {
                    //   return "Please Re-Enter New Password";
                    // } else if
                    if (value!.length < 8) {
                      return "Password must be at least 8 characters long";
                    } else if (value != password) {
                      return "Password must be same as above";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 25.h),

                // * ElevatedButton
                ElevatedButtonCustom(
                  text: 'Continue',
                  width: double.infinity,
                  height: 45,
                  // shape: const StadiumBorder(),

                  onClick: () {
                    final isValid = formKey.currentState!.validate();
                    FocusScope.of(context).unfocus();
                    if (isValid) {
                      formKey.currentState!.save();
                      Navigator.pushNamed(context, CompleteProfile.id);
                    }
                  },
                ),
                SizedBox(height: 55.h),

                // * Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SocialMediaCard(svgPath: PathIcons.googleIcon),
                    SizedBox(width: 20.w),
                    const SocialMediaCard(
                        svgPath: PathIcons.facebook, svgWidth: 8),
                    SizedBox(width: 20.w),
                    const SocialMediaCard(svgPath: PathIcons.twitter),
                  ],
                ),
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SubTextCustom(text: 'Have an account? '),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: const SubTextCustom(
                        text: 'Log in',
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),
                // * Text
                SizedBox(height: 15.h),
                const SubTextCustom(
                    text:
                        'By continuing your confirm that you agree \nwith our Term and Condition'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
