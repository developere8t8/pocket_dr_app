import 'package:flutter/material.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
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
              'Invite',
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

              Center(
                child: Container(
                  height: screenHight / 8,
                  width: screenWidth / 1.15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 15.0,top: 15),
                             child: Text(
                              'yyujGghjh.com/yy856',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                      ),
                           ),
                         ],
                       ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(right: 5.0,top: 15),
                            child:  Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff1EA1DB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Copy',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
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

              //
            ],
          )),
        ),
      ),
    );
  }
}
