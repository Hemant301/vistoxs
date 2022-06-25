import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int? activeIndexfoMenu;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            5,
            (index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      activeIndexfoMenu = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: activeIndexfoMenu == index
                          ? Color.fromARGB(255, 18, 94, 226)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45.withOpacity(.1),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 2), // changes position of shadow
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Bar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: activeIndexfoMenu == index
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                )),
          ))),
      Column(
          children: List.generate(
              5,
              (index) => Container(
                  child: Image.network(
                      "https://d4t7t8y8xqo0t.cloudfront.net/resized/1080X/restaurant%2F671217%2Fmenu%2Fmenu01594634039617.jpg"))))
    ]);
  }
}
