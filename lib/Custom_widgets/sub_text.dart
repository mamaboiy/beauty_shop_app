import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
  final String text;
  final double fs;
  final FontWeight fw;
  final Color clr;
  const SubText({
    super.key, required this.text, this.fs=18, this.fw=FontWeight.normal, this.clr=const Color(0xff000000),
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight: fw,fontSize: fs,color: clr,fontFamily: 'OpenSans'),);
  }
}