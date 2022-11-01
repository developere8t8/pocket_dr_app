// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter/material.dart';
import 'package:pocket_gp_app/screens/doctor/historypage_doc.dart';
import 'package:pocket_gp_app/screens/doctor/profile_doc.dart';
import 'package:pocket_gp_app/screens/patient/history_mesg.dart';
import 'package:pocket_gp_app/screens/patient/homepage.dart';
import 'package:pocket_gp_app/screens/patient/profile.dart';
import 'package:pocket_gp_app/screens/patient/upcoming_appointment1.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomNavigaionHome createState() => _BottomNavigaionHome();
}

class _BottomNavigaionHome extends State<BottomBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            Homepage(),
            UpcomingAppointments1(),
            HistoryPage(),
            Profile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() => _selectedIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.home),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('Calender'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.calendar_today_outlined),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('History'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.history),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('Profile'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.person),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
