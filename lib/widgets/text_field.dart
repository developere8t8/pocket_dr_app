// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;

  final Icon? suffixIcon;
  final bool? obscureText;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      style: GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: kColorBlack.withOpacity(0.37),
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: kColorGrey2, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: kColorGrey2, width: 1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        // filled: true,
        // fillColor: kWhiteColor,
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          // shadows: <Shadow>[
          //   Shadow(
          //     offset: Offset(0, 2),
          //     blurRadius: 4,
          //     color: Color.fromRGBO(0, 0, 0, 0.25),
          //   ),
          // ],
          color: kColorBlack.withOpacity(0.37),
        ),
      ),
    );
  }
}

class SignUpField extends StatelessWidget {
  final String hintText;

  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final bool? obscureText;

  const SignUpField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      style: GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: kPrimary,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: kPrimary, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: kPrimary, width: 1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
        // filled: true,
        // fillColor: kWhiteColor,
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: kPrimary,
        ),
      ),
    );
  }
}
