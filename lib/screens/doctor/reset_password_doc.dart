// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/doctor/verify.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';
import 'package:pocket_gp_app/widgets/text_field.dart';

import '../../constans.dart';

class ResetPasswordDoc extends StatefulWidget {
  const ResetPasswordDoc({super.key});

  @override
  State<ResetPasswordDoc> createState() => _ResetPasswordDocState();
}

class _ResetPasswordDocState extends State<ResetPasswordDoc> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'RESET PASSWORD',
            style: GoogleFonts.inter(
              fontSize: 15.sp,
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
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 45.h),
                  Image.asset(
                    'assets/images/reset.png',
                    scale: 4,
                  ),
                  SizedBox(height: 29.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Password',
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
                          hintText: 'New Password',
                          obscureText: true,
                          suffixIcon: Icon(
                            CupertinoIcons.eye_slash,
                            size: 20,
                            color: kColorBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Confirm New Password',
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
                          hintText: 'Confirm New Password',
                          obscureText: true,
                          suffixIcon: Icon(
                            CupertinoIcons.eye_slash,
                            size: 20,
                            color: kColorBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      SizedBox(width: 53.w),
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
                  SizedBox(height: 91.h),
                  SizedBox(
                    width: 252.w,
                    height: 49.h,
                    child: FixedPrimary(
                      buttonText: 'Login',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Verify(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
