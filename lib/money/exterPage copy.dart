import 'package:flutter/material.dart';

class ExteraPage extends StatelessWidget {
  const ExteraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 60,
          ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Business Name",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[400],
                            // letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rohan Stores",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                // letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Icon(Icons.edit)
                        ],
                      ),
                    ]),
              )),
          SizedBox(
            height: 15,
          ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[400],
                            // letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Retail and Shopping",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                // letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Icon(Icons.edit)
                        ],
                      ),
                    ]),
              )),
          SizedBox(
            height: 15,
          ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Options",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[400],
                            // letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.money),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "PhonePe Wallet, All BHIM UPI app",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                // letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ]),
              )),
          SizedBox(
            height: 15,
          ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Business Details",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[400],
                            // letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "8210*****42",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                // letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_city),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 + 40,
                            child: Text(
                              "2504 bought, last redeemed yesterday2504 bought, last redeemed yesterday2504 bought, last redeemed yesterday",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  // letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Icon(Icons.edit),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.money),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "GSTIN",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  // letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Text(
                            "Update",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.blue,
                                // letterSpacing: 1,
                                // fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      )
                    ]),
              )),
          SizedBox(
            height: 15,
          ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Store Image",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[400],
                            // letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/dummy/1.png",
                            width: MediaQuery.of(context).size.width / 2,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.edit)
                        ],
                      ),
                    ]),
              )),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
