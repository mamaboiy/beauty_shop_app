import 'package:beauty_shop_app/Custom_widgets/custom_widgets.dart';
import 'package:beauty_shop_app/Page/Home_Page.dart';
import 'package:beauty_shop_app/Page/PaymentPage.dart';
import 'package:beauty_shop_app/Page/cardPage.dart';
import 'package:beauty_shop_app/Page/categeories_Page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;
  // int _one = 1;
  // int _two = 2;
  // int _three = 3;

  final List<Widget> _pages = [
    HomePage(),
    CategeoriesPage(),
    CartPage(),
    PaymentMethod(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: primaryColor,
        child: Icon(Icons.shopping_cart_outlined, color: secondaryColor),
        onPressed: () {
          setState(() {
            _currentIndex = 2;
          });
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: bgColor,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: primaryColor,
        child: Container(
          height: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  size: 35,
                  color: _currentIndex == 0 ? secondaryColor : thirdColor,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.grid_view_rounded,
                  size: 30,
                  color: _currentIndex == 1 ? secondaryColor : thirdColor,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              SizedBox(width: 48.0),
              IconButton(
                icon: Icon(
                  Icons.chat_outlined,
                  size: 30,
                  color:thirdColor,
                  // color: _currentIndex == 3 ? secondaryColor : primaryColor,
                ),
                onPressed: () {
                  setState(() {
                    // _currentIndex = 3;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: thirdColor,
                  // color: _currentIndex == 1 ? secondaryColor : primaryColor,
                ),
                onPressed: () {
                  setState(() {
                    // _currentIndex =1;

                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
