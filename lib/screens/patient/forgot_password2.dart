// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/patient/otp.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';

import 'otp_reset.dart';
import 'reset_password.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({super.key});

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Forgot password?',
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
            icon: Icon(
              Icons.arrow_back,
              color: kPrimary,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 70.h),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpReset(),
                        ),
                      );
                    },
                    child: Container(
                      width: 323.w,
                      height: 104.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(width: 1, color: kPrimary),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 23.w),
                          Container(
                            width: 60.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimary.withOpacity(0.57),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.envelope,
                                color: kPrimary,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 27.h),
                              Text(
                                'Via Phone',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                              SizedBox(height: 7.h),
                              Text(
                                '+198*****389',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Container(
                    width: 323.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(width: 1, color: kPrimary),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 23.w),
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimary.withOpacity(0.57),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.envelope,
                              color: kPrimary,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 27.h),
                            Text(
                              'Via Email',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 7.h),
                            Text(
                              'Sec****@gmail.com',
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 324.h),
                  SizedBox(
                    width: 252.w,
                    height: 49.h,
                    child: FixedPrimary(buttonText: 'Continue', ontap: () {}),
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
