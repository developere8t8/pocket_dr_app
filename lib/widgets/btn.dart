import 'package:flutter/material.dart';

class Buttn extends StatefulWidget {
  final String txt;
  final Color clr;
  final Color txtColor;
  final double hight;
  final double width;
  final Function fnc;

  const Buttn(
      {Key? key,
      required this.txt,
      required this.clr,
      required this.txtColor,
      required this.hight,
      required this.width, required this.fnc})
      : super(key: key);

  @override
  State<Buttn> createState() => _ButtnState();
}

class _ButtnState extends State<Buttn> {
  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      color: widget.clr,
      onPressed: () {
        widget.fnc();
      },
      child: Text(
        widget.txt,
        style: TextStyle(
            color: widget.txtColor, fontSize: 15, fontWeight: FontWeight.w700),
      ),
      height: widget.hight,
      minWidth: widget.width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          width: 1,
          color: Color(0xff1EA1DB),
        ),
      ),
    );
  }
}
