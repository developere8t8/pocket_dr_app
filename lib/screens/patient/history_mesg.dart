// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pocket_gp_app/screens/patient/messaging.dart';

import 'video_call_history_note.dart';
import 'voice_call_history_note.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "History",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHight / 15,
                      width: screenWidth / 1.1,
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black38,
                        indicatorColor: Colors.white,
                        indicatorWeight: 5,
                        tabs: [
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xff1EA1DB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Tab(text: 'Messeging'),
                          ),
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xff1EA1DB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Tab(text: 'Voice Call'),
                          ),
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xff1EA1DB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Tab(text: 'Video Call'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHight / 1.4,
                      //height of TabBarView
                      child: TabBarView(
                        children: [
                          //messege bar

                          SingleChildScrollView(
                            child: Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: screenHight / 18,
                                            width: screenWidth / 1.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD9D9D9)
                                                  .withOpacity(0.24),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 10, top: 10),
                                                hintText: 'Search',
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.search),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Yesterday, Aug 16 2022',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 110,
                                      width: 320,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffD9D9D9), width: 1),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/doc11.png'),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 150,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Dr. Will James',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Ok Thanku, Take Care',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Messaging(),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  height: 35,
                                                  width: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xff1EA1DB)
                                                        .withOpacity(0.4),
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                      'assets/images/msg.png',
                                                      height: 23,
                                                      width: 23,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                '10:09AM',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //voice call bar

                          SingleChildScrollView(
                            child: Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: screenHight / 18,
                                            width: screenWidth / 1.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD9D9D9)
                                                  .withOpacity(0.24),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 10, top: 10),
                                                hintText: 'Search',
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.search),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Yesterday, Aug 16 2022',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VoiceCallHistoryNote(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 110,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Color(0xffD9D9D9),
                                              width: 1),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/doc2.png'),
                                                      fit: BoxFit.cover)),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Video Call',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Text(
                                                      'Complete',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff11972E),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff1EA1DB)
                                                    .withOpacity(0.4),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/images/phn.png',
                                                  height: 23,
                                                  width: 23,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //video call bar

                          SingleChildScrollView(
                            child: Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: screenHight / 18,
                                            width: screenWidth / 1.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD9D9D9)
                                                  .withOpacity(0.24),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 10, top: 10),
                                                hintText: 'Search',
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.search),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Yesterday, Aug 16 2022',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VideoCallHistoryNote(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 110,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Color(0xffD9D9D9),
                                              width: 1),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/doc2.png'),
                                                      fit: BoxFit.cover)),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Video Call',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Text(
                                                      'Complete',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff11972E),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff1EA1DB)
                                                    .withOpacity(0.4),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/images/video.png',
                                                  height: 23,
                                                  width: 23,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
