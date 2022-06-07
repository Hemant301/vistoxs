import 'package:flutter/material.dart';
import 'package:vistox/Home/homeslider.dart';
import 'package:vistox/Modal/HomePageModal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isactive = false;
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    switchWithInt() {
      switch (activeTab) {
        case 1:
          return Food();
        case 2:
          return Fitness();
        // case 3:
        //   return Wishlist();
        // case 4:
        //   return MyBeg();
        case 0:

        default:
          return All();
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      appBar: new PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45.withOpacity(.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(1, 2), // changes position of shadow
                )
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/logo.png"),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 202, 195, 195)),
                          ),
                          child: Row(children: [
                            Text("Andheri East"),
                            Icon(Icons.arrow_drop_down)
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: [
                                  0.1,
                                  0.4,
                                  0.6,
                                  0.9,
                                ],
                                colors: [
                                  Colors.yellow,
                                  Color.fromARGB(255, 234, 189, 84),
                                  Color.fromARGB(255, 241, 213, 0),
                                  Color.fromARGB(255, 254, 238, 12),
                                ],
                              )
                              // border: Border.all(color: Color.fromARGB(255, 202, 195, 195)
                              // ),
                              ),
                          width: MediaQuery.of(context).size.width / 5,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/wallet 1.png"),
                                Text("100"),
                              ]),
                        ),
                        Icon(Icons.search),
                        Icon(Icons.notification_add)
                      ]),
                ],
              ),
            ),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // mainAxisSpacing: 5,
                      // crossAxisSpacing: 5,
                      childAspectRatio: 2.5 / 2.1),
                  shrinkWrap: true,
                  // crossAxisCount: 2,
                  // crossAxisSpacing: 1,
                  // mainAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    appCatData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Container(
                        // height: MediaQuery.of(context).size.width / 4,
                        // width: MediaQuery.of(context).size.width / 4 + 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45.withOpacity(.1),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(1, 2), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                appCatData[index].image!,
                                height: 40,
                                width: 40,
                                // colorBlendMode: BlendMode.colorBurn,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                appCatData[index].title!,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              MyCorosule(),
              // SizedBox(
              //   height: 10,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Explore Nerby Brand",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          // letterSpacing: 1,
                          // fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/dummy/1.png",
                                                    ),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child: Transform.rotate(
                                              angle: 19.7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            238, 255, 200, 0))),
                                                height: 100,
                                                width: 35,
                                                child: Transform.rotate(
                                                    angle: 4.8,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Save 30%",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 7),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 15,
                                                      ),
                                                      Text(
                                                        "4.5",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  )))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              30,
                                          child: Text(
                                            "Nike Andheri Sports Superstore",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Text(
                                            "8km, Sector 32",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ))
                                    ],
                                  ),
                                ))),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Trending Sports Near Your Hood",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            // letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      height:
                                          MediaQuery.of(context).size.width / 4,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/dummy/2.png"),
                                            fit: BoxFit.fill),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        child: Text(
                                          "Football",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ]),

              SizedBox(
                height: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Explore Discounts on",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            // letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                          width: MediaQuery.of(
                                                          context)
                                                      .size
                                                      .width /
                                                  3 +
                                              20,
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3 -
                                              10,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/dummy/3.png"),
                                                fit: BoxFit.fill),
                                          )),
                                      Positioned(
                                          bottom: -15,
                                          right: 0,
                                          left: 0,
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black45
                                                          .withOpacity(.2),
                                                      spreadRadius: 2,
                                                      blurRadius: 2,
                                                      offset: Offset(1,
                                                          2), // changes position of shadow
                                                    )
                                                  ],
                                                  color: Color.fromARGB(
                                                      255, 4, 42, 107),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                padding: EdgeInsets.all(5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Grocery Stores",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                )),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                  ]),
              SizedBox(
                height: 30,
              ),
              MyCorosule(),
              // SizedBox(
              //   height: 10,
              // ),
              SizedBox(
                height: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Popular Cuisines",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            // letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.width / 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg"),
                                            fit: BoxFit.fill),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5,
                                        child: Text(
                                          "Football",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.width / 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg"),
                                            fit: BoxFit.fill),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5,
                                        child: Text(
                                          "Football",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Great Deals On Online Delivery",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            // letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                          width: MediaQuery.of(
                                                          context)
                                                      .size
                                                      .width /
                                                  3 +
                                              20,
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 +
                                              20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg"),
                                                fit: BoxFit.fill),
                                          )),
                                      Positioned(
                                          bottom: -15,
                                          right: 0,
                                          left: 0,
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black45
                                                          .withOpacity(.2),
                                                      spreadRadius: 2,
                                                      blurRadius: 2,
                                                      offset: Offset(1,
                                                          2), // changes position of shadow
                                                    )
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                padding: EdgeInsets.all(5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Home "),
                                                    Text(
                                                      "Delivery",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              156,
                                                              6,
                                                              232)),
                                                    ),
                                                  ],
                                                )),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          30,
                                      child: Text(
                                        "Nike Andheri Sports Superstore",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width /
                                              3 +
                                          20,
                                      child: Text(
                                        "Delivers in 3 hrs",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹2589",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      Text(
                                        " ₹1586",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ]),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Up To 70% Off On Nearby Saloons",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          // letterSpacing: 1,
                          // fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg",
                                                    ),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child: Transform.rotate(
                                              angle: 19.7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            238, 255, 200, 0))),
                                                height: 100,
                                                width: 35,
                                                child: Transform.rotate(
                                                    angle: 4.8,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Save 30%",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 7),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 15,
                                                      ),
                                                      Text(
                                                        "4.5",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  )))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              30,
                                          child: Text(
                                            "Nike Andheri Sports Superstore",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Text(
                                            "8km, Sector 32",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ))
                                    ],
                                  ),
                                ))),
                  )
                ],
              ),
              //
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Up To 40% Off On Nearby Saloons",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          // letterSpacing: 1,
                          // fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg",
                                                    ),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child: Transform.rotate(
                                              angle: 19.7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            238, 255, 200, 0))),
                                                height: 100,
                                                width: 35,
                                                child: Transform.rotate(
                                                    angle: 4.8,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Save 30%",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 7),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 15,
                                                      ),
                                                      Text(
                                                        "4.5",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  )))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              30,
                                          child: Text(
                                            "Nike Andheri Sports Superstore",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Text(
                                            "8km, Sector 32",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ))
                                    ],
                                  ),
                                ))),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 0;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 0
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 0
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 1;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 1
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Food",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 2;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 2
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Fitness",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 3;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 3
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Gym",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 3
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 4;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 4
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Beauty",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 4
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 5;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 5
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Hotal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 5
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 6;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: activeTab == 6
                                  ? Color.fromARGB(255, 18, 94, 226)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45.withOpacity(.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Events",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activeTab == 6
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ))
                  ])

                  //
                  ),

              switchWithInt()
            ]),
      ),
    );
  }
}

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          5,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 10,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://media-cdn.tripadvisor.com/media/photo-s/10/d2/5d/6c/the-food-shop-harlow.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                          top: -30,
                          child: Transform.rotate(
                            angle: 19.7,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                      color: Color.fromARGB(238, 255, 200, 0))),
                              height: 100,
                              width: 35,
                              child: Transform.rotate(
                                  angle: 4.8,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Save 30%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 7),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )))
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            child: Text(
                              "Nike Andheri Sports Superstore",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Text(
                                  "8km, Sector 32",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width / 2.5,
                          color: Colors.grey,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Text(
                              "Quick Bites, 400 for two",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )),
                        Container(
                            // padding: EdgeInsets.symmetric(vertical: 3),
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Text(
                              "2504 bought, last redeemed yesterday",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Food")],
    );
  }
}

class Fitness extends StatelessWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Fitness")],
    );
  }
}
