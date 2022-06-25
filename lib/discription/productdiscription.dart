import 'package:flutter/material.dart';
import 'package:vistox/Modal/HomePageModal.dart';
import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/Modal/productdiscriptionTap.dart';
import 'package:vistox/Modal/productdiscriptionmodal.dart';
import 'package:vistox/bloc/homebloc.dart';
import 'package:vistox/bloc/productdiscriptionbloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vistox/discription/menu.dart';
import 'package:vistox/discription/offer.dart';
import 'package:vistox/discription/overview.dart';
import 'package:vistox/discription/reviewpage.dart';

class ProductDiscription extends StatefulWidget {
  const ProductDiscription({Key? key}) : super(key: key);

  @override
  State<ProductDiscription> createState() => _ProductDiscriptionState();
}

class _ProductDiscriptionState extends State<ProductDiscription> {
  int pageIndex = 0;
  int alltab = 0;
  String idofoffer = "1";
  int id = 5;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    final Map rcvdData = ModalRoute.of(context)!.settings.arguments as Map;
    ProductDiscriptionBlocss.fetchProductDiscriptionTab(rcvdData['super_id']);
    homebloc.fetchStoredata(rcvdData['super_id'], rcvdData['store_id']);
  }

  @override
  Widget build(BuildContext context) {
    final Map rcvdData = ModalRoute.of(context)!.settings.arguments as Map;
    print(rcvdData['super_id']);
    print('store id${rcvdData['store_id']}');
    // ProductDiscriptionBlocss.fetchProductDiscriptionTab(rcvdData['super_id']);
    // homebloc.fetchStoredata(rcvdData['super_id'], rcvdData['store_id']);
    // switchWithInt() {
    //   switch (activeTab) {
    //     case 1:
    //       return Offer();
    //     // case 2:
    //     //   return Profile();
    //     // case 3:
    //     //   return Wishlist();
    //     // case 4:
    //     //   return MyBeg();
    //     case 0:

    //     default:
    //       return Overview();
    //   }
    // }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StreamBuilder<StoreModal>(
            stream: homebloc.getStaoredata.stream,
            builder: (context, newsnapshot) {
              if (!newsnapshot.hasData) return Container();
              return Column(children: [
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
                          newsnapshot.data!.store_image.length,
                          (index) => InkWell(
                            child: Container(
                              // height: 100,
                              // width: 100,
                              child: Image.network(
                                newsnapshot.data!.store_image[index].img!,
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
                                child: StreamBuilder<
                                        ProductDiscriptionTabModal>(
                                    stream: ProductDiscriptionBlocss
                                        .getproductDiscriptionTab.stream,
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) return Container();
                                      return Row(
                                          children: List.generate(
                                        snapshot.data!.tab.length,
                                        (index) => Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: InkWell(
                                              onTap: () {
                                                idofoffer = snapshot
                                                    .data!.tab[index].id!;
                                                print(idofoffer);
                                                setState(() {
                                                  alltab = index;
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Text(
                                                    snapshot
                                                        .data!.tab[index].name!,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: alltab == index
                                                            ? Colors.blue
                                                            : Colors.black),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              5,
                                                      height: 4,
                                                      color: alltab == index
                                                          ? Colors.blue
                                                          : Colors.white)
                                                ],
                                              ),
                                            )),
                                      ));
                                    })),
                          ),
                        ))
                  ],
                ),
                idofoffer == "1"
                    ? OverviewPage(
                        storeid: rcvdData['store_id'],
                        superappid: rcvdData['super_id'],
                      )
                    : Container(),
                idofoffer == "2" ? MenuPage() : Container(),
                idofoffer == "3" ? Offer() : Container(),
                idofoffer == "4"
                    ? ReviewSection()
                    : CircularProgressIndicator(),
              ]);
            }),
      ),
    );
  }
}

class ReviewButtons extends StatelessWidget {
  ReviewButtons({Key? key, this.name = "", this.active = false})
      : super(key: key);
  final String name;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: active == true ? Colors.deepPurple : Colors.grey[100]),
        child: Text(
          '$name',
          style: TextStyle(
              color: active == true ? Colors.white : Colors.black,
              fontSize: 14),
        ),
      ),
    );
  }
}
