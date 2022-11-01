// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constans.dart';

class FixedPrimary extends StatelessWidget {
  final String buttonText;
  final Function ontap;
  const FixedPrimary({
    Key? key,
    required this.buttonText,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(kPrimary),
        foregroundColor: MaterialStateProperty.all(kColorWhite),
        // padding: MaterialStateProperty.all(
        //   const EdgeInsets.symmetric(vertical: 14),
        // ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.inter(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      child: Text(buttonText),
    );
  }
}

class FixedSecondary extends StatelessWidget {
  final String buttonText;
  final Function ontap;
  const FixedSecondary({
    Key? key,
    required this.buttonText,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ontap();
      },
      child: Text(
        buttonText,
        style: GoogleFonts.inter(
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      style: TextButton.styleFrom(
        foregroundColor: kPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        side: BorderSide(color: kPrimary, width: 1, style: BorderStyle.solid),
      ),
    );
  }
}
