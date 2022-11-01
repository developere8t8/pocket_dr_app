// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/patient/dr_main_screen.dart';
import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
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
                            'Messaging',
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
                                        child: InkWell(
                                          onTap: () {
                                            openDialog();
                                          },
                                          child: Icon(
                                            Icons.message,
                                            color: kPrimary,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 31.h),
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
                      SizedBox(height: 39.h),
                      Container(
                        width: 272.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: kColorGrey2.withOpacity(0.28),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.w, right: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              Text(
                                'Hello Adam, I’m Dr. Will James.\nI will help you to solve your\ndisease compliant.',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '11:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Container(
                        width: 272.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: kColorGrey2.withOpacity(0.28),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.w, right: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              Text(
                                'This is so Important so that I can\nhelp identify your disease and\nthe solution',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '11:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Container(
                        width: 272.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: kColorGrey2.withOpacity(0.28),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.w, right: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              Text(
                                'Hello Adam, I’m Dr. Will James.\nI will help you to solve your\ndisease compliant.',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '11:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 272.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.w, right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15.h),
                                Text(
                                  'Hello Doctor Will James',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorWhite,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '11:00AM',
                                    style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorWhite,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 272.w,
                          height: 75.h,
                          decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.w, right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15.h),
                                Text(
                                  'I have a heart problem for the\npast 3 days I often feel tired and\nout of breadth',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorWhite,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '11:00AM',
                                    style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorWhite,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 272.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.w, right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15.h),
                                Text(
                                  'Sometimes, I throw up. ',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorWhite,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '11:00AM',
                                    style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: kColorWhite,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          SizedBox(
                            width: 263.w,
                            height: 50.h,
                            child: TextField(
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorBlack,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide:
                                      BorderSide(color: kPrimary, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide:
                                      BorderSide(color: kPrimary, width: 1),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.w),
                                // filled: true,
                                // fillColor: kWhiteColor,
                                hintText: 'Type message..',
                                hintStyle: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 13.w),
                          Container(
                            width: 45.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: kPrimary,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.send,
                                color: kColorWhite,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        barrierColor: kPrimary.withOpacity(0.5),
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          elevation: 0,
          backgroundColor: kPrimary.withOpacity(0.5),
          content: Builder(
            builder: (context) {
              return SizedBox(
                height: 45.h,
                width: 45.w,
                child: Column(
                  children: [
                    SizedBox(
                      width: 150.w,
                      height: 44.h,
                      child: FixedPrimary(
                          buttonText: 'Next',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorMainScreen(),
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
