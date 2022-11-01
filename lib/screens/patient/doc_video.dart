// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/patient/incomming_call_three.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';

import 'messaging.dart';

class DocVideo extends StatefulWidget {
  const DocVideo({super.key});

  @override
  State<DocVideo> createState() => _DocVideoState();
}

class _DocVideoState extends State<DocVideo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: kPrimary,
                            ),
                          ),
                          Text(
                            'Dr. Will James',
                            style: GoogleFonts.inter(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              color: kColorBlack,
                            ),
                          ),
                        ],
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
                                CupertinoIcons.heart_fill,
                                color: kColorWhite,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                        borderRadius:
                                            BorderRadius.circular(10.r),
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
                      SizedBox(height: 25.h),
                      Container(
                        width: 330.w,
                        height: 125.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: kColorGrey2),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 41.w,
                                    height: 41.h,
                                    decoration: BoxDecoration(
                                      color: kPrimary.withOpacity(0.50),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        CupertinoIcons.group,
                                        color: kPrimary,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Text(
                                    '7000+',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimary,
                                    ),
                                  ),
                                  //SizedBox(height: 5.h),
                                  Text(
                                    'patient',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 41.w,
                                    height: 41.h,
                                    decoration: BoxDecoration(
                                      color: kPrimary.withOpacity(0.50),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        CupertinoIcons.person,
                                        color: kPrimary,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Text(
                                    '10+',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimary,
                                    ),
                                  ),
                                  //SizedBox(height: 5.h),
                                  Text(
                                    'Years of experience',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 41.w,
                                    height: 41.h,
                                    decoration: BoxDecoration(
                                      color: kPrimary.withOpacity(0.50),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.reviews,
                                        color: kPrimary,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Text(
                                    '2000+',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimary,
                                    ),
                                  ),
                                  //SizedBox(height: 5.h),
                                  Text(
                                    'Reviews',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
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
                      SizedBox(height: 14.h),
                      Container(
                        width: 346.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.2, color: kColorGrey2),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Visit Time',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Thursday, August 18 2022',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        '11:00AM-11:30AM',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        width: 346.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.2, color: kColorGrey2),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Patient Information',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Full Name: Adam Ipsium',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Age: 30+',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Phone Number: +13903730379',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: 346.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.2, color: kColorGrey2),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Fee Information',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        '\$5 (paid)',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kPrimary.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 64.h),
                      Center(
                        child: SizedBox(
                          width: 252.w,
                          height: 49.h,
                          child: FixedPrimary(
                              buttonText: 'Video Call(Start11:00AM)',
                              ontap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => IncommingCallThree(),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
