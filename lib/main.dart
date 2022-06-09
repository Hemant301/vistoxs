import 'package:flutter/material.dart';
import 'package:vistox/Home/HomeScreen.dart';
import 'package:vistox/Home/category.dart';
import 'package:vistox/nav/navigationbar.dart';

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
          // "/bottompage": (context) => Bottomnavigation(),
        });
  }
}
