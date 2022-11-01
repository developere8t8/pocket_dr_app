import 'package:flutter/material.dart';
import 'package:pocket_gp_app/widgets/bottom_navigation_bar.dart';

import '../../widgets/btn.dart';
import '../../widgets/container.dart';
import 'dr_detail.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  bool value = false;
  bool isCheckedtwo = false;

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
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Write a Review',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: const Color(0xff1EA1DB),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Conten(
                    hight: 120, width: 120, img: 'assets/images/doc.png'),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'How was your experience with',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    const Text(
                      'Dr. Wills James',
                      style: TextStyle(
                        color: Color(0xff1EA1DB),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Write a Comment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Max 250 words',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: screenHight / 6,
                  width: screenWidth / 1.2,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffD9D9D9),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    maxLines: 7,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'would you like to introduce \nDr. Sarah Wells to your friends',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: value,
                        onChanged: (NewValue) {
                          setState(() {
                            this.value = NewValue!;
                          });
                        },
                      ),
                      const Text(
                        'Yes',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: isCheckedtwo,
                        onChanged: (bool? value) {
                          setState(() {
                            this.isCheckedtwo = value!;
                          });
                        },
                      ),
                      const Text(
                        'No',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Buttn(
                  txt: 'Submit Review',
                  clr: const Color(0xff1EA1DB).withOpacity(0.7),
                  txtColor: Colors.white,
                  hight: screenHight / 15,
                  width: screenWidth / 1.3,
                  fnc: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBar(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
