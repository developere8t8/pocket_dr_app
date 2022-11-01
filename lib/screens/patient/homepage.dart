// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';

import 'package:pocket_gp_app/screens/patient/spec_doc.dart';

import 'fav_doc.dart';
import 'notification.dart';
import 'top_doctors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/logo2.png',
                        width: 100.w,
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: kPrimary.withOpacity(0.50),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.bell_fill,
                                  color: kPrimary,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 17.w),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FavDoc(),
                                ),
                              );
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35.h),
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
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Specialist Doctor',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SpecDoc(),
                            ),
                          );
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: kPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Row(
                    children: [
                      Container(
                        width: 111.w,
                        height: 156.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kColorRed,
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
                      SizedBox(width: 15.w),
                      Container(
                        width: 111.w,
                        height: 156.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimary,
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
                      SizedBox(width: 15.w),
                      Container(
                        width: 111.w,
                        height: 156.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kColorYellow,
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
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Doctor',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TopDoctor(),
                            ),
                          );
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: kPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 135.w,
                            height: 136.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/mdoc.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            width: 135.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              border: Border.all(width: 1, color: kColorGrey2),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.w, top: 6.h),
                              child: Text(
                                'Dr. Will James',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kColorBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 21.w),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 135.w,
                                height: 136.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fdoc.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                              Container(
                                width: 135.w,
                                height: 64.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  border:
                                      Border.all(width: 1, color: kColorGrey2),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.w, top: 6.h),
                                  child: Text(
                                    'Dr. Sarah Wells',
                                    style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 21.w),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 135.w,
                                    height: 136.h,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/fdoc2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 135.w,
                                    height: 64.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          width: 1, color: kColorGrey2),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 16.w, top: 6.h),
                                      child: Text(
                                        'Dr. Janet',
                                        style: GoogleFonts.inter(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                          color: kColorBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 29.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendation',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorBlack,
                        ),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: kPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 135.w,
                            height: 136.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/mdoc.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            width: 135.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              border: Border.all(width: 1, color: kColorGrey2),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.w, top: 6.h),
                              child: Text(
                                'Dr. Will James',
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kColorBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 21.w),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 135.w,
                                height: 136.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fdoc.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                              Container(
                                width: 135.w,
                                height: 64.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  border:
                                      Border.all(width: 1, color: kColorGrey2),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.w, top: 6.h),
                                  child: Text(
                                    'Dr. Sarah Wells',
                                    style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kColorBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 21.w),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 135.w,
                                    height: 136.h,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/fdoc2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 135.w,
                                    height: 64.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          width: 1, color: kColorGrey2),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 16.w, top: 6.h),
                                      child: Text(
                                        'Dr. Janet',
                                        style: GoogleFonts.inter(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                          color: kColorBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
