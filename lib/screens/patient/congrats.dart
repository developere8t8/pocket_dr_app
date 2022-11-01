import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_gp_app/constans.dart';
import 'package:pocket_gp_app/widgets/bottom_navigation_bar.dart';

import 'homepage.dart';

class Congrats extends StatefulWidget {
  const Congrats({super.key});

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomBar()));
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 232.h),
                Image.asset(
                  'assets/images/congrats.png',
                  scale: 2.5,
                ),
                SizedBox(height: 28.h),
                Text(
                  'Congratulations',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorBlack),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Your account is ready to be use. You will\nbe redirected to the homepage in few\nseconds',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: kColorGray),
                ),
                SizedBox(height: 21.h),
                Image.asset(
                  'assets/images/loading.png',
                  scale: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
