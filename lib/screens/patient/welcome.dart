import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';
import 'package:pocket_gp_app/screens/patient/sign_in.dart';
import 'package:pocket_gp_app/screens/patient/sign_up.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 306.h),
                Image.asset(
                  'assets/images/logo.png',
                  scale: 4,
                ),
                SizedBox(height: 150.h),
                Text(
                  'Welocme to second opinion for you',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: kPrimary,
                  ),
                ),
                SizedBox(height: 44.h),
                SizedBox(
                  width: 231.w,
                  height: 34.h,
                  child: FixedPrimary(
                      buttonText: 'Sign Up',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: 231.w,
                  height: 34.h,
                  child: FixedSecondary(
                      buttonText: 'Sign In',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
