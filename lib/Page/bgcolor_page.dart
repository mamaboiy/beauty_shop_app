import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBackground extends StatelessWidget {
  // final Widget child;
  const GradientBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE9E3CB),
              Color(0xFF5A7C76),
            ],
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [
               // Text(
                 // 'Choose your favourite category',
                  //style: GoogleFonts.oleoScript(
                    //  color: Colors.black, fontWeight: FontWeight.normal),
                //),
              ],
            )
          ],
        ),
      ),
    );
  }
}
