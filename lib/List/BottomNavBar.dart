import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Page/Home_Page.dart';
import 'package:beauty_shop_app/Page/categeories_Page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class buttomnavbar extends StatefulWidget {
  const buttomnavbar({super.key});

  @override
  State<buttomnavbar> createState() => _buttomnavbarState();
}

class _buttomnavbarState extends State<buttomnavbar> {
  List list = [
    HomePage(),
    CategeoriesPage(),
    CategeoriesPage(),
    // CardPage(),
    // Favorite(),
  ];

  List<Icon>allItems=[
    Icon(Icons.home_outlined,color: Colors.white,size: 30,),
    Icon(Icons.grid_view_rounded,color: Colors.white,size: 30),
    Icon(Icons.favorite_outlined,color: Colors.white,size: 30),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: primaryColor,
        buttonBackgroundColor: primaryColor,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds:500),
        animationCurve: Curves.decelerate,
        index: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
        items: allItems,
      ),
    );
  }
}
