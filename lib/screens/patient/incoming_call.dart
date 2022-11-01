// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/container.dart';
import 'dr_main_screen.dart';

class IncomingCall extends StatefulWidget {
  const IncomingCall({Key? key}) : super(key: key);

  @override
  State<IncomingCall> createState() => _IncomingCallState();
}

class _IncomingCallState extends State<IncomingCall> {
  bool isvisible = false;
  bool isvisiblility = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xff1EA1DB),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 220,
              ),
              Conten(hight: 220, width: 220, img: 'assets/images/doc3.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dr. Janet Williams',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Visibility(
                visible: isvisiblility,
                child: Text(
                  'Recording call in progress...',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
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
                  Visibility(
                    visible: isvisible,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isvisiblility = !isvisiblility;
                        });
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
                            'assets/images/circle.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
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
                          'assets/images/phn2.png',
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
    );
  }
}
