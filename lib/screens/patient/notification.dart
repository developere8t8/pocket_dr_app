import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constans.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Notification',
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
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 33.h),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Text(
                      'Today, August 15 2022',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/icons/clock.png',
                          scale: 4,
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              'Appointment Alarm',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Your appointment will start within 15\nminutes',
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
                  SizedBox(height: 19.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/icons/bluetick.png',
                          scale: 4,
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              'Appointment Confirmed',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Appointment confirmed with Dr. Will\nJames',
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
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Text(
                      'Today, August 14 2022',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/icons/yellow.png',
                          scale: 5,
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              'Notification',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'You added a doctor too you\nfavourite list',
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
                  SizedBox(height: 13.h),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Text(
                      'Today, August 12 2022',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/icons/clock.png',
                          scale: 4,
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              'Appointment Alarm',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Your appointment will start within 15\nminutes',
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
                  SizedBox(height: 19.h),
                  Container(
                    width: 332.w,
                    height: 98.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kColorGrey2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/icons/bluetick.png',
                          scale: 4,
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              'Appointment Confirmed',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: kColorBlack,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Appointment confirmed with Dr. Will\nJames',
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
