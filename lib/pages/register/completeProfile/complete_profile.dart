import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/components/text_custom.dart';
import 'package:e_commerce/components/textfield_custom.dart';
import 'package:e_commerce/pages/register/otp/otp_verification.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);
  static const String id = 'CompleteProfile';

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  final TextEditingController _date = TextEditingController();
  // FocusNode focusNodeFirstName = FocusNode();
  // FocusNode focusNodeLastName = FocusNode();
  // FocusNode focusNodePhone = FocusNode();
  // FocusNode focusNodeAddress = FocusNode();
  // FocusNode dateOfBirth = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   focusNodeFirstName.addListener(() => setState(() {}));
  //   focusNodeLastName.addListener(() => setState(() {}));
  //   focusNodePhone.addListener(() => setState(() {}));
  //   focusNodeAddress.addListener(() => setState(() {}));
  //   dateOfBirth.addListener(() => setState(() {}));
  // }

  Future<void> _selectDate() async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    );
    if (newDate != null && newDate != selectedDate) {
      setState(() {
        selectedDate = newDate;
        _date.text =
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        title: '',
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const TextCustom(text: 'Complete Profile'),
                SizedBox(height: 5.h),
                const SubTextCustom(
                    text:
                        'Complete your details or continue\n with social media'),
                SizedBox(height: 30.h),
                TextFieldsCustom(
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                  suffixIcon: PathIcons.user,
                  // focusNode: focusNodeFirstName,
                  validator: (value) {
                    // const pattern = r'^[a-z A-Z]+$';
                    // final RegExp regExp = RegExp(pattern);
                    // if (value!.isEmpty || regExp.hasMatch(value)) {}
                    if (value!.isEmpty) {
                      return 'Enter First Name';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                  suffixIcon: PathIcons.user,
                  // focusNode: focusNodeLastName,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Last Name';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  labelText: 'Date of Birth',
                  hintText: 'Enter your date of birth',
                  suffixIcon: PathIcons.date,
                  // focusNode: dateOfBirth,
                  iconWidth: 20,
                  controller: _date,
                  onPressIcon: _selectDate,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your date of birth';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  suffixIcon: PathIcons.phone,
                  iconWidth: 14,
                  // focusNode: focusNodePhone,
                  validator: (value) {
                    // const pattern =
                    //     r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$';
                    const pattern = r'^(0\W*7\W*(?:\d\W*){9})$';

                    final RegExp regExp = RegExp(pattern);
                    if (value!.isEmpty || regExp.hasMatch(value)) {
                      return 'Enter Correct Phone Number';
                    } else if (value.length != 10) {
                      return 'The number must consist of 10 digits';
                    }
                    return null;
                  },
                ),
                TextFieldsCustom(
                  labelText: 'Address',
                  hintText: 'Enter your address',
                  suffixIcon: PathIcons.locationPoint,
                  iconWidth: 17,
                  // focusNode: focusNodeAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your Address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.h),
                ElevatedButtonCustom(
                  text: 'Continue',
                  width: double.infinity,
                  height: 45,
                  onClick: () {
                    final isValid = formKey.currentState!.validate();
                    FocusScope.of(context).unfocus();
                    if (isValid) {
                      formKey.currentState!.save();
                      Navigator.pushNamed(context, OTPVerification.id);
                    }
                  },
                ),
                SizedBox(height: 35.h),
                const SubTextCustom(
                    text:
                        'By continuing your confirm that you agree\n with our Term and Condition'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
