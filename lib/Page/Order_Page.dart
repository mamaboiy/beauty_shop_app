import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/Page/PaymentPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCECFBB),
      body: SafeArea(child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PaymentMethod()));
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left_circle,
                    size: 40,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            Gap(20),
            Column(
              children: [
                Text("Congratulations",style: GoogleFonts.oleoScript(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor
                ),),
                Text("your Order Has Been Placed",style: GoogleFonts.oleoScript(
                    fontSize: 23,
                    // fontWeight: FontWeight.bold,
                    color: primaryColor
                ),)
              ],
            ),
            Gap(10),
            Image(image: AssetImage("assets/images/order.png"),),
            Gap(20),

            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor
              ),
              child: Center(child: SubText(text: "Track Order",clr: thirdColor,fw: FontWeight.bold,)),
            ),
            Gap(20),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: primaryColor,width: 2)
              ),
              child: Center(child: SubText(text: "Continue Shopping",clr: primaryColor,fw: FontWeight.bold,)),
            ),
          ],
        ),
      )),
    );
  }
}