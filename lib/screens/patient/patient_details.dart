// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/text_field.dart';

import '../../constans.dart';
import '../../widgets/buttons.dart';

import 'payment.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
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
              'Patient Details',
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
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h),
                  Text(
                    'Full Name',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: TextFieldWidget(
                      hintText: 'Full Name',
                      suffixIcon: Icon(
                        Icons.person,
                        size: 17,
                        color: kPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Select Your Age Range',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 58.w,
                          height: 31.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Text(
                              '10+',
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          width: 58.w,
                          height: 31.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Text(
                              '20+',
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          width: 58.w,
                          height: 31.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Text(
                              '30+',
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          width: 58.w,
                          height: 31.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Text(
                              '40+',
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          width: 58.w,
                          height: 31.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kPrimary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Text(
                              '50+',
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kPrimary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: TextFieldWidget(
                      hintText: 'Phone Number',
                      suffixIcon: Icon(
                        CupertinoIcons.phone,
                        color: kPrimary,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Sex',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: 303.w,
                    height: 30.h,
                    child: TextFieldWidget(
                      hintText: 'Sex',
                      suffixIcon: Icon(
                        Icons.arrow_downward,
                        color: kPrimary,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Write your problem',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 13.h),
                  SizedBox(
                    width: 303.w,
                    height: 95.h,
                    child: TextField(
                      maxLines: 5,
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kPrimary,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: kPrimary, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: kPrimary, width: 1),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.h),
                  Text(
                    'Upload any relevant medical record',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorBlack,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 303.w,
                    height: 95.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimary),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Container(
                        width: 41.w,
                        height: 41.h,
                        decoration: BoxDecoration(
                          color: kPrimary.withOpacity(0.50),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.add,
                            color: kColorWhite,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
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
                                builder: (context) => Payment(),
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
