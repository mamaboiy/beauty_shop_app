import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/Page/bottom.dart';
import 'package:beauty_shop_app/model/Product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  Products products;
  ProductDetails({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffCECFBB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // height: 800,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffCECFBB), primaryColor])),
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => CustomBottomNavBar()));
                      },
                      icon: Icon(
                        CupertinoIcons.arrow_left_circle,
                        size: 40,
                        color: primaryColor,
                      ),
                    ),
                    Icon(
                      Icons.favorite_outlined,
                      size: 40,
                      color: primaryColor,
                    )
                  ],
                ),
                Gap(15),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${products.name}",
                            style: GoogleFonts.oleoScript(
                                fontSize: 28, color: primaryColor),
                          ),
                          Gap(8),
                          Text(
                            "${products.company}",
                            style: GoogleFonts.oleoScript(
                                fontSize: 26, color: secondaryColor),
                          ),
                          Gap(8),
                          SubText(text: "${products.discription}",clr: thirdColor,fw: FontWeight.bold,),
                          Gap(8),
                          Text(
                            "\$ ${products.price}",
                            style: GoogleFonts.oleoScript(
                                fontSize: 25, color: primaryColor),
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus_circle_fill,
                                size: 30,
                                color: secondaryColor,
                              ),
                              Gap(5),
                              Text("1",
                                style: TextStyle(fontSize: 24,color:  primaryColor,fontWeight:  FontWeight.bold),
                              ),
                              Gap(5),
                              Icon(
                                CupertinoIcons.plus_circle_fill,
                                size: 30,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 450,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("${products.imgs}"), fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(60),
                Row(
                  children: [
                    Card(
                      elevation: 4,
                      child: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffCECFBB),
                            border: Border.all(color: primaryColor,width: 1)
                        ),
                        child: Center(child: SubText(text: "100ml",clr: primaryColor,fw: FontWeight.bold,)),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffCECFBB),
                            border: Border.all(color: primaryColor,width: 1)
                        ),
                        child: Center(child: SubText(text: "250ml",clr: primaryColor,fw: FontWeight.bold,)),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffCECFBB),
                            border: Border.all(color: primaryColor,width: 1)
                        ),
                        child: Center(child: SubText(text: "500ml",clr: primaryColor,fw: FontWeight.bold,)),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffCECFBB),
                            border: Border.all(color: primaryColor,width: 1)
                        ),
                        child: Center(child: SubText(text: "1000ml",clr: primaryColor,fw: FontWeight.bold,)),
                      ),
                    ),
                  ],
                ),
                Gap(30),
                Card(
                  elevation: 4,
                  color: Color(0xffCECFBB),
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffCECFBB),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(11)
                          ),
                          child: Icon(Icons.shopping_cart_outlined,color: secondaryColor,size: 50,),
                        ),
                        SubText(text: "Swipe for Hasslr Free Shopping",fs: 18,fw: FontWeight.bold,clr: primaryColor,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
