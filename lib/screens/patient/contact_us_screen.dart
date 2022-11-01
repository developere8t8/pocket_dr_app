import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
              'Contact us',
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
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: screenHight / 15,
                  width: screenWidth / 1.15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xff1EA1DB),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff1EA1DB).withOpacity(0.7),
                      ),
                      hintText: 'Full Name',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              //

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: screenHight / 15,
                  width: screenWidth / 1.15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xff1EA1DB),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 15,
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff1EA1DB).withOpacity(0.7),
                      ),
                      hintText: 'Eamil',
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xff1EA1DB),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),

              //

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Messges',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        )
                      ],
                    ),
                    Text(
                      'Max 250 Words',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: screenHight / 5,
                  width: screenWidth / 1.15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff1EA1DB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    maxLines: 30,
                    style: TextStyle(
                      color: Color(0xff1EA1DB),
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 15, right: 15, top: 15),
                      hintStyle: TextStyle(
                        color: Color(0xff1EA1DB).withOpacity(0.7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 45.0, right: 45),
                child: MaterialButton(
                  onPressed: () {},
                  height: 50,
                  color: Color(0xff1EA1DB).withOpacity(0.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Send messege  ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
