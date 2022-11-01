// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';

import 'package:pocket_gp_app/screens/patient/spec_doc.dart';

class HomepageDoc extends StatefulWidget {
  const HomepageDoc({super.key});

  @override
  State<HomepageDoc> createState() => _HomepageDocState();
}

class _HomepageDocState extends State<HomepageDoc> {
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
            icon: const Icon(
              Icons.arrow_back,
              color: kPrimary,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/logo2.png',
                        width: 100.w,
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: kPrimary.withOpacity(0.50),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.bell_fill,
                                color: kPrimary,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 66.w,
                        height: 66.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/mdoc.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 30.w),
                      Icon(Icons.star, color: kPrimary, size: 25),
                      SizedBox(width: 12.w),
                      Text(
                        '5(2150 reviews)',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.67.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Appointment',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      Text(
                        'see all',
                        style: GoogleFonts.inter(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: kPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.h),
                  Text(
                    'Today, August 18 2022',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            'assets/images/docf1.png',
                            width: 102.w,
                            height: 98.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 21.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: Text(
                                    'Dr. Will James',
                                    style: GoogleFonts.inter(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: kPrimary.withOpacity(0.50),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.message,
                                      color: kPrimary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Text(
                                  "Video Call",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                                SizedBox(width: 7.w),
                                Text(
                                  "Scheduled ",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              '11:00AM-11:30AM',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            'assets/images/fdocf2.png',
                            width: 102.w,
                            height: 98.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 21.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: Text(
                                    'Dr. Janet Williams',
                                    style: GoogleFonts.inter(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: kPrimary.withOpacity(0.50),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.phone,
                                      color: kPrimary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Text(
                                  "Video Call",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                                SizedBox(width: 7.w),
                                Text(
                                  "Scheduled ",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              '10:30AM-11:00AM',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            'assets/images/fdocf1.png',
                            width: 102.w,
                            height: 98.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 21.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: Text(
                                    'Dr. Sarah Wells',
                                    style: GoogleFonts.inter(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: kPrimary.withOpacity(0.50),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.video_call,
                                      color: kPrimary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Text(
                                  "Video Call",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                                SizedBox(width: 7.w),
                                Text(
                                  "Scheduled ",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "10:00AM-10:30AM",
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Today, August 17 2022',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            'assets/images/docf2.png',
                            width: 102.w,
                            height: 98.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 21.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: Text(
                                    'Dr. Sam George',
                                    style: GoogleFonts.inter(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: kPrimary.withOpacity(0.50),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.phone,
                                      color: kPrimary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Text(
                                  "Video Call",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                                SizedBox(width: 7.w),
                                Text(
                                  "In progress ",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorYellow,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "11:00AM-11:30AM",
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
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
