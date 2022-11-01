// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/doctor/otp_doc.dart';
import 'package:pocket_gp_app/screens/doctor/sign_in_doc.dart';
import 'package:pocket_gp_app/screens/patient/sign_in.dart';
import 'package:pocket_gp_app/screens/patient/sign_up.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';
import 'package:pocket_gp_app/widgets/text_field.dart';

import '../../constans.dart';

class SignUpDoc extends StatefulWidget {
  const SignUpDoc({super.key});

  @override
  State<SignUpDoc> createState() => _SignUpDocState();
}

class _SignUpDocState extends State<SignUpDoc> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Sign up',
            style: GoogleFonts.inter(
              fontSize: 17.sp,
              fontWeight: FontWeight.w700,
              color: kColorBlack,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kPrimary,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 33.h),
                Row(
                  children: [
                    Container(
                      width: 135.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: kPrimary,
                      ),
                      child: Center(
                        child: Text(
                          'I’m a Doctor',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorWhite,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Container(
                        width: 135.w,
                        height: 38.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(width: 1, color: kPrimary)),
                        child: Center(
                          child: Text(
                            'I’m a Patient',
                            style: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: kPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'select prefix',
                    suffixIcon: Icon(
                      Icons.arrow_downward,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'First name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'Last name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    hintText: 'Enter your mobile number',
                    prefixIcon: Icon(
                      Icons.smartphone,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    obscureText: true,
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kPrimary,
                      size: 15,
                    ),
                    suffixIcon: Icon(
                      CupertinoIcons.eye_slash,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 303.w,
                  height: 38.h,
                  child: SignUpField(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kPrimary,
                      size: 15,
                    ),
                    suffixIcon: Icon(
                      CupertinoIcons.eye_slash,
                      color: kPrimary,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Verification Code Received',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: kPrimary,
                  ),
                ),
                SizedBox(height: 19.h),
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      onChanged: (value) => setState(() => this.value = value!),
                    ),
                    Text(
                      'SMS',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kPrimary,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Checkbox(
                      value: value1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      onChanged: (value) =>
                          setState(() => this.value1 = value!),
                    ),
                    Text(
                      'EMAIL',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kPrimary,
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 25.h),
                Row(
                  children: [
                    Checkbox(
                      value: value2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      onChanged: (value) =>
                          setState(() => this.value2 = value!),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'By signing up you’ve agree to Our\nTerms of Use And Privacy Notice',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: kColorBlack,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 252.w,
                        height: 49.h,
                        child: FixedPrimary(
                          buttonText: 'Sign Up',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpDoc(),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInDoc(),
                            ),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: kPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
