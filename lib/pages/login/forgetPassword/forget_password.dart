import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/components/textfield_custom.dart';
import 'package:e_commerce/pages/register/register.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  static const String id = 'ForgetPassword';
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String? email;
  final formKey = GlobalKey<FormState>();
  // FocusNode focusNodeEmail = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   focusNodeEmail.addListener(() => setState(() {}));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        title: 'Forget Password',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  const TextCustom(text: 'Forget Password'),
                  SizedBox(height: 5.h),
                  const SubTextCustom(
                      text:
                          'Please enter your email and we will send \nyou a link to return to your account'),
                  SizedBox(height: 80.h),
                  TextFieldsCustom(
                    labelText: 'Email',
                    hintText: 'Enter your email',
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
                  SizedBox(height: 100.h),
                  ElevatedButtonCustom(
                    text: 'Continue',
                    width: double.infinity,
                    height: 45,
                    onClick: () {
                      final isValid = formKey.currentState!.validate();
                      FocusScope.of(context).unfocus();

                      if (isValid) {
                        formKey.currentState!.save();
                      }
                    },
                  ),
                  SizedBox(height: 80.h),
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
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
