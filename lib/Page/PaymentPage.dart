import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/Page/Order_Page.dart';
import 'package:beauty_shop_app/Page/cardPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCECFBB),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CartPage()));
                        },
                        child: Icon(
                          CupertinoIcons.arrow_left_circle,
                          size: 40,
                          color: primaryColor,
                        ),
                      ),
                      Gap(40),
                      Text("Payment Method",
                          style: GoogleFonts.oleoScript(
                              fontSize: 28,
                              color: primaryColor,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Image(image: AssetImage("assets/images/pay.png")),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffE9E3CB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubText(text:
                          "Name on Card",clr: primaryColor,fs: 16,fw: FontWeight.bold,
                        ),
                        SubText(text:
                          "kinlay Lhendup",clr: primaryColor,fs: 16,
                        ),
                      ],
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffE9E3CB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubText(text:
                          "Card Number",clr: primaryColor,fs: 16,fw: FontWeight.bold,
                        ),
                        SubText(text:
                          "1232342345",clr: primaryColor,fs: 16,
                        ),
                      ],
                    ),
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffE9E3CB),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubText(text:
                              "Expiration Date",clr: primaryColor,fs: 16,fw: FontWeight.bold,
        
                            ),
                            SubText(text:
                            "11/07/2025",clr: primaryColor,fs: 16,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffE9E3CB),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubText(text: "CVC",clr: primaryColor,fs: 16,fw: FontWeight.bold,),
                            SubText(text: "124",clr: primaryColor,fs: 16,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(40),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>TrackOrder()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: primaryColor),
                      child: Center(
                          child: SubText(text: "Add Card",clr: thirdColor,fw: FontWeight.bold,fs: 20,),),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}