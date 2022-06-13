import 'package:flutter/material.dart';

class ProductDiscription extends StatefulWidget {
  const ProductDiscription({Key? key}) : super(key: key);

  @override
  State<ProductDiscription> createState() => _ProductDiscriptionState();
}

class _ProductDiscriptionState extends State<ProductDiscription> {
  int pageIndex = 0;
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child:
                    // Image.asset(
                    //   "assets/dummy/macdonal.png",
                    //   errorBuilder: (context, error, stackTrace) =>
                    //       Image.asset('assets/b1.png'),
                    //   fit: BoxFit.fill,
                    // ),

                    PageView(
                  onPageChanged: (i) {
                    print(i);
                    setState(() {
                      pageIndex = i;
                    });
                  },
                  children: List.generate(
                    3,
                    (index) => InkWell(
                      child: Container(
                        // height: 100,
                        // width: 100,
                        child: Image.asset(
                          "assets/dummy/macdonal.png",
                          fit: BoxFit.fill,

                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.share_sharp,
                                  color: Colors.white,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 60,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeTab = 0;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Overview",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: activeTab == 0
                                              ? Color.fromARGB(255, 18, 94, 226)
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: activeTab == 0
                                            ? Color.fromARGB(255, 18, 94, 226)
                                            : Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Colors.black45.withOpacity(.1),
                                        //     spreadRadius: 2,
                                        //     blurRadius: 2,
                                        //     offset: Offset(1,
                                        //         2), // changes position of shadow
                                        //   )
                                        // ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeTab = 1;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Offers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: activeTab == 1
                                              ? Color.fromARGB(255, 18, 94, 226)
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: activeTab == 1
                                            ? Color.fromARGB(255, 18, 94, 226)
                                            : Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Colors.black45.withOpacity(.1),
                                        //     spreadRadius: 2,
                                        //     blurRadius: 2,
                                        //     offset: Offset(1,
                                        //         2), // changes position of shadow
                                        //   )
                                        // ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeTab = 2;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Menus",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: activeTab == 2
                                              ? Color.fromARGB(255, 18, 94, 226)
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: activeTab == 2
                                            ? Color.fromARGB(255, 18, 94, 226)
                                            : Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Colors.black45.withOpacity(.1),
                                        //     spreadRadius: 2,
                                        //     blurRadius: 2,
                                        //     offset: Offset(1,
                                        //         2), // changes position of shadow
                                        //   )
                                        // ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeTab = 3;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: activeTab == 3
                                              ? Color.fromARGB(255, 18, 94, 226)
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: activeTab == 3
                                            ? Color.fromARGB(255, 18, 94, 226)
                                            : Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Colors.black45.withOpacity(.1),
                                        //     spreadRadius: 2,
                                        //     blurRadius: 2,
                                        //     offset: Offset(1,
                                        //         2), // changes position of shadow
                                        //   )
                                        // ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ]),
                      ),
                    ),
                  ))
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 60,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45.withOpacity(.1),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 2), // changes position of shadow
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Redberry Bar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Jalaram Commercial Center, Sakinaka, Andheri East",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[400],
                              // fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Row(
                          children: [
                            Text(
                              "₹ 2,700 for 2 *",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              " Mexican, American",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Now Open .",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              " Closes at 00:59 AM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Upto 15% off with HDFC Bank Credit Cards",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey[400],
                                // fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 60,
                  // padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(1, 2), // changes position of shadow
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/makup.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pay Bill",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              "Save Extra 10% using promoCash",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 94, 226),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45.withOpacity(.1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "15%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Flat Off",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 60,
                  // padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(1, 2), // changes position of shadow
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/makup.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reserve a Table",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 60,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(1, 2), // changes position of shadow
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stories",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Capture memories and be the first one to upload a story here.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ADD  STORY",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 18, 94, 226),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/makup.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 60,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(1, 2), // changes position of shadow
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: Text(
                            "This restaurant has the best Lorem Ipsum which is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. read less",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.grey[400],
                                // fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   "ADD  STORY",
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //       color: Color.fromARGB(255, 18, 94, 226),
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 12),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/makup.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CUISINE",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "Mexican, American",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/makup.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ESTABLISHMENT TYPE",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "Nightlife",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/makup.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MUST TRY",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        "Seafood Basket, Singapore Sling, Chocolate Caramel Tart, Dessert Platter, Mango Tango, Grilled Salmon.",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/makup.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AVERAGE COST",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        "₹ 2,700* for 2 Includes Alcohol\n₹ 2,700* for Pint of beer\n\r *approx amount",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
