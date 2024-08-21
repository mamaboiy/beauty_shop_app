import 'package:beauty_shop_app/List/BottomNavBar.dart';
import 'package:beauty_shop_app/Page/Home_Page.dart';
import 'package:beauty_shop_app/Page/bgcolor_page.dart';
import 'package:beauty_shop_app/Page/Splash.dart';
import 'package:beauty_shop_app/Page/bottom.dart';
import 'package:beauty_shop_app/Page/categeories_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Splash(),
    );
  }
}
