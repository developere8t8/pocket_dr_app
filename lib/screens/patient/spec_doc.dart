import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constans.dart';

class SpecDoc extends StatefulWidget {
  const SpecDoc({super.key});

  @override
  State<SpecDoc> createState() => _SpecDocState();
}

class _SpecDocState extends State<SpecDoc> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Specialist Doctor',
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
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Column(
                children: [
                  SizedBox(height: 49.h),
                  GridView.count(
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 1 / 1,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kColorRed,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/heart.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Cardio\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '100 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kPrimary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/teeth.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Dental\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '200 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kPrimary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/child.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Child\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '230 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kColorYellow,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/brain.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Brain\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '150 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kColorYellow,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/eyespec.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Eye\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '275 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kColorRed,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/nerve.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Nerve\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '85 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kColorRed,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/sex.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Sex\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '175 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kPrimary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.h),
                            Image.asset(
                              'assets/icons/bone.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Bone\nSpecialist',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              '75 Doctors',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
