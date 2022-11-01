// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/btn.dart';

class VoiceCallHistoryNoteDoc extends StatefulWidget {
  const VoiceCallHistoryNoteDoc({Key? key}) : super(key: key);

  @override
  State<VoiceCallHistoryNoteDoc> createState() =>
      _VoiceCallHistoryNoteDocState();
}

class _VoiceCallHistoryNoteDocState extends State<VoiceCallHistoryNoteDoc> {
  bool visibl = false;
  bool visibltwo = false;
  bool visiblfour = false;
  bool visiblthre = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Voice Call',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff1EA1DB),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
                child: Container(
                  height: 110,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffD9D9D9), width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/doc2.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Janet Williams',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Voice Call',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Complete',
                                style: TextStyle(
                                  color: Color(0xff11972E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '10:30AM-11:30AM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      '30 minutes of video call have been recorded',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visibl,
                child: Image.asset(
                  'assets/images/sounds.png',
                  scale: 1.5,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visiblfour,
                child: Text(
                  '12:00 min',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visibltwo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttn(
                      txt: "Pause",
                      clr: Color(0xff1EA1DB),
                      txtColor: Colors.white,
                      hight: 40,
                      width: 100,
                      fnc: () {},
                    ),
                    Buttn(
                      txt: "Stop",
                      clr: Colors.white,
                      txtColor: Color(0xff1EA1DB),
                      hight: 40,
                      width: 100,
                      fnc: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visiblthre,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 25),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        visibl = !visibl;
                        visibltwo = !visibltwo;
                        visiblthre = !visiblthre;
                        visiblfour = !visiblfour;
                      });
                    },
                    height: 50,
                    color: Color(0xff1EA1DB),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "  Play Recording",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
