// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pocket_gp_app/widgets/buttons.dart';
import 'package:pocket_gp_app/widgets/slider_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constans.dart';

import 'welcome.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();
  bool isLastPage = false;
  List<Widget> _pages = [
    SliderWidget(
        bgImage: 'assets/images/doc1.png',
        titleText: 'Thousands of doctors',
        descText:
            'You can easily contact with a thousands of doctors and contact for your need'),
    SliderWidget(
        bgImage: 'assets/images/doc2.png',
        titleText: 'Chat with doctors',
        descText:
            'Book an appointment with doctor, chat with doctor via appointment letter and get consultation'),
    SliderWidget(
        bgImage: 'assets/images/doc3.png',
        titleText: 'Live talk with doctor',
        descText:
            'Easily connect with doctor, start voice and voice call for your better treatment & description'),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() => isLastPage = index == 2);
                },
                itemBuilder: ((context, int index) {
                  return _pages[index];
                }),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 630.h),
                    SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 3,
                      effect: SwapEffect(
                        activeDotColor: kPrimary,
                      ),
                      onDotClicked: (index) => _controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOutQuint),
                    ),
                    SizedBox(height: 36.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Welcome(),
                          ),
                        );
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutQuint);
                      },
                      child: Text(
                        'Skip',
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kPrimary,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.h),
                    isLastPage
                        ? SizedBox(
                            width: 231.w,
                            height: 34.h,
                            child: FixedPrimary(
                              buttonText: 'Next',
                              ontap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Welcome(),
                                  ),
                                );
                              },
                            ),
                          )
                        : SizedBox(
                            width: 231.w,
                            height: 34.h,
                            child: FixedPrimary(
                              buttonText: 'Next',
                              ontap: () {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOutQuint);
                              },
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
