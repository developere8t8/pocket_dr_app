// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/doctor/homepage_doc.dart';
import 'package:pocket_gp_app/screens/patient/sign_up.dart';
import 'package:pocket_gp_app/widgets/bottom_bar_doc.dart';
import 'package:pocket_gp_app/widgets/buttons.dart';
import 'package:pocket_gp_app/widgets/text_field.dart';

import '../../constans.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Verification',
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
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Column(
                children: [
                  SizedBox(height: 36.h),
                  Text(
                    'Picture Verification',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: 338.w,
                    height: 173.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 1, color: kPrimary),
                    ),
                    child: Center(
                      child: Icon(CupertinoIcons.camera_fill,
                          color: kPrimary, size: 40),
                    ),
                  ),
                  SizedBox(height: 57.h),
                  Text(
                    'Registration number',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: SignUpField(hintText: 'Reg Number'),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Registration body',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: SignUpField(hintText: 'Reg Body'),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Area of Speciality',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: SignUpField(
                      hintText: 'Speciality',
                      suffixIcon: Icon(
                        Icons.arrow_downward,
                        color: kPrimary,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 115.h),
                  SizedBox(
                    width: 252.w,
                    height: 49.h,
                    child: FixedPrimary(
                        buttonText: 'Verify',
                        ontap: () {
                          openDialog();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        barrierColor: kPrimary.withOpacity(0.34),
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          elevation: 0,
          backgroundColor: kColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
          ),
          content: Builder(
            builder: (context) {
              return SizedBox(
                height: 460.h,
                width: 300.w,
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Image.asset(
                      'assets/icons/verify.png',
                      scale: 2,
                    ),
                    SizedBox(height: 37),
                    Text(
                      'Application review',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorBlack,
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Thank you for registering with  Pocket GP as a doctor. We will review your application and activate your account in 2-4 working days.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: kColorGray,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 312.w,
                      height: 60.h,
                      child: FixedPrimary(
                          buttonText: 'Go to Profile',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBarDoc(),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
}
