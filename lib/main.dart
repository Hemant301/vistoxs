import 'package:flutter/material.dart';
import 'package:vistox/Home/HomeScreen.dart';

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
        initialRoute: ('/HomeScreen'),
        routes: {
          "/HomeScreen": (context) => HomeScreen(),
          // "/splashScreen": (context) => Splash_Screen(),
          // "/event": (context) => EventPage(),
          // "/bottompage": (context) => Bottomnavigation(),
        });
  }
}
