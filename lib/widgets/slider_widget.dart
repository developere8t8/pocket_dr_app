// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';

class SliderWidget extends StatelessWidget {
  final String bgImage, titleText, descText;
  const SliderWidget(
      {super.key,
      required this.bgImage,
      required this.titleText,
      required this.descText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 643.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 520.h),
              Container(
                width: 375.w,
                height: 123.h,
                decoration: BoxDecoration(
                  color: kColorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Column(
                    children: [
                      SizedBox(height: 25.h),
                      Text(
                        titleText,
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kPrimary,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        descText,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
