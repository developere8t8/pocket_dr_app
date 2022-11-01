// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';
import 'patient_details.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
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
              'Book Appointment',
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
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.h),
                  Container(
                    width: 152.w,
                    height: 21.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimary),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        'Monday, 12 August 2022',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    'Choose the hour',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 19.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '09:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '10:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '11:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.h),
                        Row(
                          children: [
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '13:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '14:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '15:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.h),
                        Row(
                          children: [
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '16:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '17:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Container(
                              width: 90.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: kPrimary),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  '18:00AM',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'Fee Information',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    width: 347.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimary),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 22.w),
                        Container(
                          width: 41.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            color: kPrimary.withOpacity(0.50),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.message,
                              color: kPrimary,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        SizedBox(
                          width: 220.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 18),
                              Text(
                                'Messaging',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kColorBlack,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Can message with doctor',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$5',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Container(
                    width: 347.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimary),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 22.w),
                        Container(
                          width: 41.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            color: kPrimary.withOpacity(0.50),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.phone,
                              color: kPrimary,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        SizedBox(
                          width: 220.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 18),
                              Text(
                                'Voice Call',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kColorBlack,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Can Voice call with doctor',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$12',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Container(
                    width: 347.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimary),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 22.w),
                        Container(
                          width: 41.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            color: kPrimary.withOpacity(0.50),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.video_call,
                              color: kPrimary,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        SizedBox(
                          width: 220.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 18),
                              Text(
                                'Video Call',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kColorBlack,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Can Video call with doctor',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$20',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 43.h),
                  Center(
                    child: SizedBox(
                      width: 252.w,
                      height: 49.h,
                      child: FixedPrimary(
                          buttonText: 'Next',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PatientDetails(),
                              ),
                            );
                          }),
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
