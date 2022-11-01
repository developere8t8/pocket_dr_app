// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';

class CnPackage extends StatefulWidget {
  const CnPackage({super.key});

  @override
  State<CnPackage> createState() => _CnPackageState();
}

class _CnPackageState extends State<CnPackage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Consultation Package',
            style: GoogleFonts.inter(
              fontSize: 15.sp,
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                SizedBox(height: 70.h),
                Container(
                  width: 347.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 1, color: kPrimary),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 22.w),
                      Container(
                        width: 41.w,
                        height: 41.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimary.withOpacity(0.46),
                        ),
                        child: Icon(
                          Icons.message,
                          size: 25,
                          color: kPrimary,
                        ),
                      ),
                      SizedBox(width: 11.h),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Messaging',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kColorBlack,
                          ),
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
                      SizedBox(width: 5),
                      Icon(
                        Icons.edit,
                        size: 25,
                        color: kPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: 347.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 1, color: kPrimary),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 22.w),
                      Container(
                        width: 41.w,
                        height: 41.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimary.withOpacity(0.46),
                        ),
                        child: Icon(
                          Icons.call,
                          size: 25,
                          color: kPrimary,
                        ),
                      ),
                      SizedBox(width: 11.h),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Voice Call',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kColorBlack,
                          ),
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
                      SizedBox(width: 5),
                      Icon(
                        Icons.edit,
                        size: 25,
                        color: kPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: 347.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 1, color: kPrimary),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 22.w),
                      Container(
                        width: 41.w,
                        height: 41.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimary.withOpacity(0.46),
                        ),
                        child: Icon(
                          Icons.video_call,
                          size: 25,
                          color: kPrimary,
                        ),
                      ),
                      SizedBox(width: 11.h),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Video Call',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kColorBlack,
                          ),
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
                      SizedBox(width: 5),
                      Icon(
                        Icons.edit,
                        size: 25,
                        color: kPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 39.h),
                SizedBox(
                  width: 113.w,
                  height: 49.h,
                  child: FixedPrimary(buttonText: 'Save', ontap: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
