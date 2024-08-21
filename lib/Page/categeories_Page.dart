import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Custom_widgets/sub_text.dart';
import 'package:beauty_shop_app/List/catagories_list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CategeoriesPage extends StatefulWidget {
  const CategeoriesPage({super.key});

  @override
  State<CategeoriesPage> createState() => _CategeoriesPageState();
}

class _CategeoriesPageState extends State<CategeoriesPage> {
  // int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.only(top:99 ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    maintext(
                      text: 'Choose your favourite ',
                      fs: 30,
                      clr: primaryColor,
                      fw: FontWeight.normal,
                    ),
                    maintext(
                      text: 'category',
                      fs: 30,
                      clr: primaryColor,
                      fw: FontWeight.normal,
                    ),
                    SubText(
                      text: 'You can choose more than one',
                      fs: 18,
                      clr: primaryColor.withOpacity(0.7),
                      fw: FontWeight.bold,
                    )
                  ],
                ),
                Gap(33),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  value: isSelectedAll,
                                  onChanged: (value) {
                                    setState(() {
                                      isSelectedAll = value!;
                                      items.forEach((item) {
                                        item.isSelected = isSelectedAll;
                                        item.color = isSelectedAll
                                            ? Color(0xff5A7C76)
                                            : Color(0xffCECFBB);
                                      });
                                    });
                                  },
                                ),
                                SubText(
                                  text: 'Select All',
                                  fs: 18,
                                  clr: primaryColor,
                                  // Replace with primaryColor
                                  fw: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 16,
                            runSpacing: 16,
                            children: items.map((item) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    item.isSelected = !item.isSelected;
                                    item.color = item.isSelected
                                        ? Color(0xff5A7C76)
                                        : Color(0xffCECFBB);
                                    isSelectedAll = items
                                        .every((item) => item.isSelected);
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: item.color,
                                    border: Border.all(
                                        color: primaryColor, width: 2),
                                    // Replace with primaryColor
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        item.imgUrl,
                                        height: 26,
                                        width: 26,
                                      ),
                                      SizedBox(width: 8),
                                      SubText(
                                        text: item.text,
                                        clr: item.isSelected
                                            ? Color(0xffCECFBB)
                                            : Color(0xff5A7C76),
                                        fw: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text(_page.toString(), style: TextStyle(fontSize: 160)),
            //     ElevatedButton(
            //       child: Text('Go To Page of index 1'),
            //       onPressed: () {
            //         final CurvedNavigationBarState? navBarState =
            //             _bottomNavigationKey.currentState;
            //         navBarState?.setPage(1);
            //       },
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
