import 'package:flutter/material.dart';

import 'dr_main_screen.dart';

class IncommingCallThree extends StatefulWidget {
  const IncommingCallThree({Key? key}) : super(key: key);

  @override
  State<IncommingCallThree> createState() => _IncommingCallThreeState();
}

class _IncommingCallThreeState extends State<IncommingCallThree> {
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
              image: AssetImage('assets/images/doc444.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 450,
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
                  height: 50,
                ),
                Visibility(
                  visible: isvisiblility,
                  child: Text(
                    'Recording call in progress...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
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
