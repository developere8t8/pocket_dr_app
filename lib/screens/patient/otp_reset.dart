import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pocket_gp_app/screens/doctor/sign_in_doc.dart';
import 'package:pocket_gp_app/screens/patient/reset_password.dart';
import 'package:pocket_gp_app/screens/patient/sign_in.dart';

import '../../widgets/btn.dart';

class OtpReset extends StatefulWidget {
  const OtpReset({Key? key}) : super(key: key);

  @override
  State<OtpReset> createState() => _OtpResetState();
}

class _OtpResetState extends State<OtpReset> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(
        color: Colors.black45,
      ),
      borderRadius: BorderRadius.circular(6.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Verify by SMS',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff1EA1DB),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 160,
          ),
          Center(
            child: Text(
              'Code has been sent to +1 98 ***389',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff616161),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: PinPut(
              fieldsCount: 4,
              autofocus: true,
              eachFieldHeight: 50.0,
              eachFieldWidth: 50.0,
              cursorColor: Colors.black45,
              mainAxisSize: MainAxisSize.max,
              textStyle: const TextStyle(
                fontSize: 30.0,
                color: Color(0xff616161),
                fontWeight: FontWeight.w700,
              ),
              submittedFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(6.0),
              ),
              selectedFieldDecoration: _pinPutDecoration,
              followingFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  width: 1.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resend code in',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '45s',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff1EA1DB),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Buttn(
            txt: 'Verify',
            clr: Color(0xff1EA1DB),
            txtColor: Colors.white,
            hight: 55,
            width: 280,
            fnc: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResetPassword(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
