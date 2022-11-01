// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';
import 'package:pocket_gp_app/screens/doctor/forgot_password_doc.dart';
import 'package:pocket_gp_app/screens/doctor/sign_up_doc.dart';
import 'package:pocket_gp_app/screens/doctor/verify.dart';
import 'package:pocket_gp_app/screens/patient/forgot_password2.dart';
import 'package:pocket_gp_app/screens/patient/sign_in.dart';

import '../../widgets/buttons.dart';
import '../../widgets/text_field.dart';

class SignInDoc extends StatefulWidget {
  const SignInDoc({super.key});

  @override
  State<SignInDoc> createState() => _SignInDocState();
}

class _SignInDocState extends State<SignInDoc> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: kPrimary,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 135.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: kPrimary),
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
                                builder: (context) => SignIn(),
                              ),
                            );
                          },
                          child: Container(
                            width: 135.w,
                            height: 38.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              border: Border.all(width: 1, color: kPrimary),
                            ),
                            child: Center(
                              child: Text(
                                'I’m a Client',
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
                    SizedBox(
                      height: 50.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Welcome Back!',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: kColorBlack,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          'Sign in your Account',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: kColorBlack,
                          ),
                        ),
                        SizedBox(height: 74.h),
                        Text(
                          'Username/Email*',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorBlack,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 303.w,
                          height: 30.h,
                          child: TextFieldWidget(
                            hintText: 'Username/Email*',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 21.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorBlack,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 303.w,
                          height: 30.h,
                          child: TextFieldWidget(
                            hintText: 'Password',
                            obscureText: true,
                            suffixIcon: Icon(
                              CupertinoIcons.eye_slash,
                              size: 20.sp,
                              color: kPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.r),
                          ),
                          onChanged: (value) =>
                              setState(() => this.value = value!),
                        ),
                        SizedBox(width: 11.w),
                        Text(
                          'Remember me',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorBlack,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      width: 252.w,
                      height: 49.h,
                      child: FixedPrimary(
                          buttonText: 'Sign In',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Verify(),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 21.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordDoc(),
                          ),
                        );
                      },
                      child: Text(
                        'Forget the password?',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kPrimary,
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h),
                    Text(
                      'By signing up you’ve agree to Our Terms of Use And Privacy Policy ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: kColorBlack,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Don’t have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpDoc(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: kPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
