import 'package:flutter/material.dart';

class Conten extends StatefulWidget {
  final double hight;
  final double width;
  final String img;
  const Conten({Key? key, required this.hight, required this.width, required this.img}) : super(key: key);

  @override
  State<Conten> createState() => _ContenState();
}

class _ContenState extends State<Conten> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: widget.hight,
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
        image: DecorationImage(
          image: AssetImage('${widget.img}'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
