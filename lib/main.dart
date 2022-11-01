import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_gp_app/constans.dart';
import 'package:pocket_gp_app/primary_swatch.dart';
import 'package:pocket_gp_app/screens/doctor/appointments_doc.dart';
import 'package:pocket_gp_app/screens/doctor/homepage_doc.dart';
import 'package:pocket_gp_app/screens/doctor/otp_doc.dart';
import 'package:pocket_gp_app/screens/doctor/sign_up_doc.dart';
import 'package:pocket_gp_app/screens/doctor/verify.dart';
import 'screens/patient/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kColorWhite,
          primarySwatch: buildMaterialColor(kPrimary),
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
