// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/screens/patient/doc_profile.dart';

import '../../constans.dart';

class TopDoctor extends StatefulWidget {
  const TopDoctor({super.key});

  @override
  State<TopDoctor> createState() => _TopDoctorState();
}

class _TopDoctorState extends State<TopDoctor> {
  List<bool> isSelected = [true, false, true];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'Top Doctor',
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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ToggleButtons(),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DocProfile(),
                        ),
                      );
                    },
                    child: Container(
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
                                        CupertinoIcons.heart_fill,
                                        color: kPrimary,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //SizedBox(height: 11.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: kPrimary,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    '5(2150 reviews)',
                                    style: GoogleFonts.inter(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Cardio Specialist. Cleveland Clinic\nCleveland',
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
                                      CupertinoIcons.heart_fill,
                                      color: kColorWhite,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //SizedBox(height: 11.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: kPrimary,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '4.5(1375 reviews)',
                                  style: GoogleFonts.inter(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'The Mater Misericordiae University\nHospital, Eccles St, Dublin',
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
                                      CupertinoIcons.heart_fill,
                                      color: kColorWhite,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //SizedBox(height: 11.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: kPrimary,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '4.9(2050 reviews)',
                                  style: GoogleFonts.inter(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "St Thomas' Hospital, Westminster\nBridge Rd, London",
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
                                      CupertinoIcons.heart_fill,
                                      color: kColorWhite,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //SizedBox(height: 11.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: kPrimary,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '5(2150 reviews)',
                                  style: GoogleFonts.inter(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Massachusetts General Hospital\nBoston, MA",
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
                            'assets/images/docf3.png',
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
                                    'Dr. Andrew Stones',
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
                                      CupertinoIcons.heart_fill,
                                      color: kPrimary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //SizedBox(height: 11.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: kPrimary,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '5(3150 reviews)',
                                  style: GoogleFonts.inter(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Bone specialist. Massachusetts\nGeneral Hospital ",
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

class ToggleButtons extends StatelessWidget {
  const ToggleButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'All',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 61.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Cardio',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 57.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Dental',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 43.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Brain',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 57.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Nerve',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 41.w,
          height: 25.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Eye',
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: kPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
