import 'package:flutter/material.dart';

class SecurityScreenDoc extends StatefulWidget {
  const SecurityScreenDoc({Key? key}) : super(key: key);

  @override
  State<SecurityScreenDoc> createState() => _SecurityScreenDocState();
}

class _SecurityScreenDocState extends State<SecurityScreenDoc> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

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
            title: const Text(
              'Security',
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
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff1EA1DB),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Face ID',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Switch(
                        splashRadius: 10,
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
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
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Switch(
                        splashRadius: 10,
                        value: isChecked1,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked1 = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
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
                      const Text(
                        'Touch ID',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Switch(
                        splashRadius: 10,
                        value: isChecked2,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked2 = value;
                          });
                        },
                      ),
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
