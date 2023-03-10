import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/home_Screen.dart';
import 'package:shoppingappui/setting/buy8.dart';
import 'package:shoppingappui/setting/buy9.dart';
import 'package:shoppingappui/setting/setting.dart';

import 'Screens/Into_screen.dart';
import 'Shoping/buy2.dart';
import 'Shoping/shop.dart';
//import 'Screens/introduction_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro_Screen(),
    );
  }
}
