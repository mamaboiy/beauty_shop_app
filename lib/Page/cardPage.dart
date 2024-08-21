import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/List/BottomNavBar.dart';
import 'package:beauty_shop_app/Page/PaymentPage.dart';
import 'package:beauty_shop_app/Page/bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCECFBB),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CustomBottomNavBar()));
                        },
                        child: Icon(
                          CupertinoIcons.arrow_left_circle,
                          size: 40,
                          color: primaryColor,
                        ),
                      ),
                      Gap(100),
                      Text("Cart",style: GoogleFonts.oleoScript(
                          fontSize: 34, color: primaryColor),)
                    ],
                  ),
                  Gap(20),
                  Card(
                    elevation: 4,
                    color: Color(0xffCECFBB),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: primaryColor.withOpacity(0.3,),width: 3)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/ClearGlow.png"),height: 120,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nevia Sun Cream",style: GoogleFonts.oleoScript(
                                      color: primaryColor,
                                      fontSize: 18
                                  ),),
                                  SubText(text:"Jhonson",clr: primaryColor,fs: 16,fw: FontWeight.bold,),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.minus_circle_fill,
                                        size: 25,
                                        color: secondaryColor,
                                      ),
                                      Gap(5),
                                      SubText(text:
                                        "1",clr: primaryColor,fs: 16,fw: FontWeight.bold,
                                      ),
                                      Gap(5),
                                      Icon(
                                        CupertinoIcons.plus_circle_fill,
                                        size: 25,
                                        color: primaryColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(30),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(CupertinoIcons.xmark,color: primaryColor,),
                                  SubText(text:"500ml",clr: primaryColor,fs: 16,fw: FontWeight.bold,),
                                  Text("\$ 82", style: GoogleFonts.oleoScript(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor
                                  ),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PaymentMethod()));
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor
                  ),
                  child: Center(child: SubText(text: "Go To CheckOut",clr: thirdColor,fw: FontWeight.bold,fs: 20,),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
