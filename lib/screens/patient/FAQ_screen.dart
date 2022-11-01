import 'package:flutter/material.dart';

class FAQscreen extends StatefulWidget {
  const FAQscreen({Key? key}) : super(key: key);

  @override
  State<FAQscreen> createState() => _FAQscreenState();
}

class _FAQscreenState extends State<FAQscreen> {
  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'FAQ',
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
              child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xff1EA1DB),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'General',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1EA1DB), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            color: Color(0xff1EA1DB),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1EA1DB), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff1EA1DB),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1EA1DB), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Doctor',
                          style: TextStyle(
                            color: Color(0xff1EA1DB),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: screenHight / 5.8,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: screenWidth / 1.35,
                            child: Text(
                              'Do I need a referral for an appointment or advice?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Color(0xff1EA1DB),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xffD9D9D9),
                        endIndent: 25,
                        indent: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'You do not need a referral for an appointment or advice on our application. You can make your appointment yourself by following our on-site guide.',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //2

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'Will Pocket GP recommend solutions to my problems or provide drugs instead?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //3

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'Can I request a prescription for medication?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //4

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'To what extent is our medical concerns confidential?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //5

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'What causes acne?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //6

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'Are all skin cancers the same?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //7

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'What are cherry angiomas?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),

                //8

                SizedBox(height: 25),
                Container(
                  height: screenHight / 12,
                  width: screenWidth / 1.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: screenWidth / 1.35,
                        child: Text(
                          'What is actinic Keratosis?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Color(0xff1EA1DB),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
