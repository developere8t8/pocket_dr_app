// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pocket_gp_app/screens/doctor/FAQscreen_doc.dart';
import 'package:pocket_gp_app/screens/doctor/contact_us_doc.dart';

class HelpScreenDoc extends StatefulWidget {
  const HelpScreenDoc({Key? key}) : super(key: key);

  @override
  State<HelpScreenDoc> createState() => _HelpScreenDocState();
}

class _HelpScreenDocState extends State<HelpScreenDoc> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Help',
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
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FAQscreenDoc(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EA1DB),
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                  endIndent: 25,
                  indent: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contac Us',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactUsDoc(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EA1DB),
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                  endIndent: 25,
                  indent: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms&condition',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EA1DB),
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                  endIndent: 25,
                  indent: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy policy',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EA1DB),
                            size: 20,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
