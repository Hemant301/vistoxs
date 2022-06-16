import 'package:flutter/material.dart';
import 'package:vistox/Home/HomeScreen.dart';
import 'package:vistox/Home/category.dart';
import 'package:vistox/money/addaccount.dart';
import 'package:vistox/money/exterPage.dart';
import 'package:vistox/discription/productdiscription.dart';
import 'package:vistox/money/personaldetail.dart';
import 'package:vistox/nav/navigationbar.dart';
import 'package:vistox/profileitem/helpSupport.dart';
import 'package:vistox/profileitem/notification.dart';
import 'package:vistox/profileitem/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RGC',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
            // fontFamily: font,
            ),
        initialRoute: ('/navigationbar'),
        routes: {
          "/HomeScreen": (context) => HomeScreen(),
          "/navigationbar": (context) => NavBar(),
          "/category": (context) => Category(),
          "/helpSupport": (context) => helpSupport(),
          "/setting": (context) => Settings(),
          "/notification": (context) => NotificationPage(),
          "/productdiscription": (context) => ProductDiscription(),
          "/productdiscription": (context) => ProductDiscription(),
          "/exterPage": (context) => ExteraPage(),
          "/personaldetail": (context) => PersonalDetails(),
          "/addaccount": (context) => AddAccount(),
        });
  }
}
