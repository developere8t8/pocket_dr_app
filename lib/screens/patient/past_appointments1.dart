// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/screens/patient/upcoming_appointment1.dart';

import '../../constans.dart';

class PastAppointments1 extends StatefulWidget {
  const PastAppointments1({super.key});

  @override
  State<PastAppointments1> createState() => _PastAppointments1State();
}

class _PastAppointments1State extends State<PastAppointments1> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              'My Appointments',
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
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 55.h),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpcomingAppointments1(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              'Upcoming',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 33.w),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PastAppointments1(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              'Past',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 17.h),
                  SizedBox(
                    width: 338.w,
                    height: 34.h,
                    child: TextField(
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          CupertinoIcons.search,
                          color: kColorBlack,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                        filled: true,
                        fillColor: kColorGrey2.withOpacity(0.24),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
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
                                  "Completed",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorGreen,
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
                                  "Completed",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorGreen,
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
                                  "Completed",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorGreen,
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
                                  "Declinded",
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorRed,
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
