import 'dart:ui';

import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
<<<<<<< HEAD
import 'package:beauty_shop_app/Page/Home_Page.dart';
=======
// import 'package:beauty_shop_app/Page/Home_Page.dart';
>>>>>>> 62cdbb9 (Initial commit)
import 'package:beauty_shop_app/Page/bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart';
=======
// import 'package:google_fonts/google_fonts.dart';
>>>>>>> 62cdbb9 (Initial commit)

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
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
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 110),
                child: Opacity(
                  opacity: 0.8,
                  child: Stack(
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        child: Image.asset(
                          'assets/images/order.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150.2,
                left: 108.29,
                child: Transform.rotate(
                  angle: 0.2,
                  child: Container(
                    // margin: EdgeInsets.only(top: 164.2,left: 108.29),
                    height: 41,
                    width: 173,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(11),
                      color: secondaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        maintext(
<<<<<<< HEAD
                          text: 'Feel young Again',
=======
                          text: 'Be youngAgain',
>>>>>>> 62cdbb9 (Initial commit)
                          fs: 15,
                          clr: primaryColor,
                        ),
                        Gap(3),
                        Icon(Icons.arrow_forward,color: primaryColor,)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 524,
                child: Container(
                  width: 328,
                  margin: EdgeInsets.only(left: 48,right: 32),
                  child: SubText(
                    text:
                        'Get ready to glow up with our beauty secrets '
                            'and make your skin never give up!',clr: secondaryColor,fw: FontWeight.bold,fs: 19,
                  ),
                ),
              ),
              ///button
              Positioned(
                top: 634,
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 48,right: 32),
                    width: 328,
                    height: 57,
                    decoration: BoxDecoration(
                      color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: secondaryColor.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: secondaryColor,width: 3)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CustomBottomNavBar()));
                        },
                            child: maintext(text: 'Let\'s Shop',clr:secondaryColor,fs: 24,)),
                        Gap(3),
                        Icon(Icons.arrow_forward,color: secondaryColor,)
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                  child: Image.asset('assets/images/UpdatingArrows.png')
              ),
              Positioned(
                top: 110,
                left: 280,
                  child: Image.asset('assets/images/rightArrow.png')
              ),
              Positioned(
                  top: 504,
                  right: 360,
                  child: Image.asset('assets/images/bottomleftArrows.png')
              ),
              Positioned(
                  top: 440,
                  left: 380,
                  child: Image.asset('assets/images/bottomrightArrows.png')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
