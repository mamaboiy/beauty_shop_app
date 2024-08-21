import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/List/Product_list.dart';
import 'package:beauty_shop_app/Page/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // height: MediaQuery.of(context).size.height*0.9,
            // height: 1000,
            padding: EdgeInsets.all(10),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start, // Add this line
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'),
                                // replace with your image name
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Gap(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              maintext(
                                  text: 'Hello Kinlay', fs: 25, clr: primaryColor),
                              maintext(
                                  text: 'Welcomback', fs: 16, clr: primaryColor)
                            ],
                          ),
                        ],
                      ),

                      Stack(
                        children: [
                          Positioned(top: 5,right:5,child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:primaryColor,
                            ),
                            height: 8,
                            width: 8,
                          ),),

                          Icon(
                            Icons.notifications_none_outlined,
                            color: primaryColor,
                            size: 34,
                          ),
                        ],
                      ), // This will be aligned to the right
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: primaryColor,
                          style: TextStyle(color: thirdColor,fontSize: 18),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,color: thirdColor,),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: thirdColor), // Add this line
                            fillColor: primaryColor.withOpacity(0.5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 16.0),
                          ),
                        ),
                      ),
                      Gap(8),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.tune, color: thirdColor),
                          onPressed: () {
                            /// Handle filter icon press
                          },
                        ),
                      ),
                    ],
                  ),
                  Gap(20),

                  SubText(text: 'Popular Products',fs: 20,fw: FontWeight.bold,clr: primaryColor,),

                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: product.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 20, top: 20, bottom: 20),
                              child: ClipRRect(
                                clipBehavior: Clip.none,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: thirdColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color:primaryColor
                                                .withOpacity(0.6),
                                            offset: Offset(0, 10),
                                            blurRadius: 6)
                                      ]),
                                  alignment: Alignment.bottomCenter,
                                  height: 210,
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(11),
                                    child: Container(
                                      height: 100,
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      color: primaryColor,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              SubText(
                                                text: '${product[index].title}',clr: secondaryColor,
                                                fs: 19,
                                                fw: FontWeight.bold,
                                              ),
                                              SubText(text: '\$${product[index].price}',clr: secondaryColor,fw: FontWeight.bold,),
                                            ],
                                          ),
                                          Gap(10),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              SubText(
                                                text: '${product[index].description}',clr: secondaryColor,
                                                // fm: 'OpenSans',
                                                fs: 16,
                                                fw: FontWeight.w400,
                                              ),

                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: -5,
                                left: 10,
                                right: 10,
                                child: Image.asset(
                                  fit: BoxFit.fitHeight,
                                  '${product[index].imagePath}',
                                  height: 110,
                                  width: 110,
                                ),
                            ),

                          ],
                        );
                      },
                    ),
                  ),

                  Gap(15),

                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: product.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE9E3CB)),
                            child: Center(
                                child:SubText(text: "${product[index].title}",fs: 18,clr: primaryColor,fw: FontWeight.bold,) ),
                          );
                        }),
                  ),
                  Gap(20),

                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: product.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) =>
                                    ProductDetails(products: allProduct[index])
                            )
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: index % 2 == 0
                                  ? thirdColor
                                  : primaryColor,
                              // border: Border.all(color: primaryColor, width: 3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image:
                                      AssetImage("${product[index].imagePath}"),
                                      height: 80,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${product[index].title}",
                                          style: TextStyle(
                                              color: index % 2 == 0
                                                  ? primaryColor
                                                  : secondaryColor,
                                              fontSize: 18,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${product[index].description}",
                                          style: TextStyle(
                                              color: index % 2 == 0
                                                  ? primaryColor
                                                  : secondaryColor,
                                              fontSize: 16,fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outlined,
                                      size: 30,
                                      color: index % 2 == 0
                                          ? primaryColor
                                          : thirdColor,
                                    ),
                                    Text(
                                      "\$ ${product[index].price}",
                                      style: TextStyle(
                                        color: index % 2 == 0
                                            ? primaryColor
                                            : secondaryColor,
                                        fontSize: 16,fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
