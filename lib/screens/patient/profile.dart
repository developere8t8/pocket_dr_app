// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'appearence_screen.dart';
import 'help_screen.dart';
import 'invite_screen.dart';
import 'notificaion_screen.dart';
import 'security_scren.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Container(
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage('assets/images/pencil.png'),
                      scale: 3.5,
                    )),
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: Image.asset('assets/images/pp.png'),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 50,
                        child: Image.asset(
                          'assets/images/circ.png',
                          scale: 3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adam Smith',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Adamsmith@yourdomain.com',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Canada',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/notificaion.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/lock.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecurityScreens(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/eye.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Appearance',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppearanceScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/ii.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/people.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Invite Friends',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InviteScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffC60707).withOpacity(0.4),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logout.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
