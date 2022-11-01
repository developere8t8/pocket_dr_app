// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

import '../../constans.dart';
import 'upcoming_appointment1.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Payment',
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
                SizedBox(height: 58.h),
                Image.asset(
                  'assets/images/payment.png',
                  width: 159.w,
                  height: 148.h,
                ),
                SizedBox(height: 75.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/tick.png',
                      scale: 5,
                    ),
                    Text(
                      'Set as primary payment method.',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: kColorBlack,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 340.h),
                SizedBox(
                  width: 252.w,
                  height: 49.h,
                  child: FixedPrimary(
                      buttonText: 'Next',
                      ontap: () {
                        openDialog();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        barrierColor: Colors.black12,
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          elevation: 0,
          backgroundColor: kColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
          ),
          content: Builder(
            builder: (context) {
              return SizedBox(
                height: 445.h,
                width: 300.w,
                child: Column(
                  children: [
                    SizedBox(height: 184.h),
                    Text(
                      'Succesful',
                      style: GoogleFonts.inter(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w800,
                        color: kPrimary,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      'Your appointment booking with  Dr. Wills James is successful.  Dr. James will message you soon',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kColorBlack,
                      ),
                    ),
                    SizedBox(height: 37.h),
                    SizedBox(
                      width: 229.w,
                      height: 49.h,
                      child: FixedPrimary(
                          buttonText: 'Ok',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpcomingAppointments1(),
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
