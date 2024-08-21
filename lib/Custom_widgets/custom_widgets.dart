import 'package:flutter/material.dart';

class maintext extends StatelessWidget {
  final String text;
  final double fs;
  final FontWeight fw;
  final Color clr;
  const maintext({
    super.key, required this.text,  this.fs=21,  this.fw=FontWeight.bold,  this.clr= const Color(0xff000000),
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontFamily: 'OleoScript',
        fontSize: fs,
        fontWeight:fw,
        color: clr,),
    );
  }
}

Color primaryColor=Color(0xFF5A7C76);
Color secondaryColor=Color(0xFFE8FFFF);
Color bgColor=Color(0xFFCECFBB);
Color thirdColor=Color(0xFFE9E3CB);
Color gup=Color(0xFF48cae4);
Color gdown=Color(0xFF8A7C76);
