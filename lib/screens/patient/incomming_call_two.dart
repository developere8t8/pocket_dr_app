// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/container.dart';
import 'dr_main_screen.dart';
import 'incomming_call_three.dart';

class IncommingCalTwo extends StatefulWidget {
  const IncommingCalTwo({Key? key}) : super(key: key);

  @override
  State<IncommingCalTwo> createState() => _IncommingCalTwoState();
}

class _IncommingCalTwoState extends State<IncommingCalTwo> {
  bool isvisible = false;
  bool isvisiblility = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xff1EA1DB),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/doc44.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 220,
                ),
                Conten(hight: 220, width: 220, img: 'assets/images/doc4.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Dr. Sarah Walls',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorMainScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/x.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IncommingCallThree(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/video.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
