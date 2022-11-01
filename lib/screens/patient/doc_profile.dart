// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';

import 'book_appointment.dart';

class DocProfile extends StatefulWidget {
  const DocProfile({super.key});

  @override
  State<DocProfile> createState() => _DocProfileState();
}

class _DocProfileState extends State<DocProfile> {
  List<bool> isSelected = [true, false, true];
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
                          SizedBox(width: 10.w),
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: kPrimary.withOpacity(0.50),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.share,
                                color: kPrimary,
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
                      SizedBox(height: 21.h),
                      Text(
                        'About Doctor',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        'Dr. Will James is an experienced Cardiologist working at CLeverland Clinic. He has recieved various Award for his wonderful contribution and performance in his filed. He his readily available for consultation.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        'Working Time',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Mon-Fri, 09:00AM - 18:00PM',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 17.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: kColorBlack,
                            ),
                          ),
                          Text(
                            'see reviews',
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
                        'Make Appointment',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kColorBlack,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Mon',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '12',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Tue',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '16',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Wed',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '17',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Thu',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Fri',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              width: 54.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 18.h),
                                  Text(
                                    'Sat',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 7.w),
                          ],
                        ),
                      ),
                      SizedBox(height: 21.h),
                      Center(
                        child: SizedBox(
                          width: 252.w,
                          height: 49.h,
                          child: FixedPrimary(
                              buttonText: 'Book Appointment',
                              ontap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BookAppointment(),
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: 33.h),
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
