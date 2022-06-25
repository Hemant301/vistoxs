import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vistox/discription/productdiscription.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({Key? key}) : super(key: key);

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Voice of Diner',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '4.1',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              itemSize: 40,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
              onRatingUpdate: (rating) {
                // rate = rating;
                // print(rate.runtimeType);
                print(rating);
              }),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Excellent',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Good',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Average',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Poor',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width / 2,
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width /
                                  2 *
                                  70 /
                                  100,
                              height: 6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width / 2,
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 86, 148, 88),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width /
                                  2 *
                                  40 /
                                  100,
                              height: 6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width / 2,
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 104, 164, 106),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width /
                                  2 *
                                  30 /
                                  100,
                              height: 6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width / 2,
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 81, 31),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width /
                                  2 *
                                  20 /
                                  100,
                              height: 6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width / 2,
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 0, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width /
                                  2 *
                                  10 /
                                  100,
                              height: 6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('149 Total Reviews')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('4.6',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Food')
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('4.6',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Ambience')
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '4.6',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Service')
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('4.6',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Hygine')
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Rate your Experience',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    itemSize: 40,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    ignoreGestures: false,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                    onRatingUpdate: (rating) {
                      // rate = rating;
                      // print(rate.runtimeType);
                      print(rating);
                    }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Review',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.sort, color: Colors.grey[400]),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sort',
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              ReviewButtons(
                name: 'All',
                active: true,
              ),
              SizedBox(
                width: 10,
              ),
              ReviewButtons(
                name: "Detailed review",
              ),
              SizedBox(
                width: 10,
              ),
              ReviewButtons(
                name: "Verified visits",
              ),
              SizedBox(
                width: 10,
              ),
              ReviewButtons(name: "With photos"),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ReviewItem(
            image: "assets/dummy/zan-WrueFKpTlQs-unsplash 1.png",
            profileimage: "",
            name: "hemant",
            time: "3 min ago",
            like: "5",
            discription: "assets/dummy/zan-WrueFKpTlQs-unsplash 1.png",
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  ReviewItem(
      {Key? key,
      this.image,
      this.discription,
      this.like,
      this.name,
      this.profileimage,
      this.time})
      : super(key: key);

  String? profileimage;
  String? image;
  String? name;
  String? like;

  String? time;
  String? discription;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 7,
                  width: MediaQuery.of(context).size.width / 7,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(profileimage!))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 18, 94, 226),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(.1),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(1, 2), // changes position of shadow
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Icon(Icons.verified, color: Colors.white),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Verified",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 30,
            child: Text(
              discription!,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Image.asset(image!),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Icon(Icons.verified, color: Colors.black),
                // SizedBox(
                //   width: 3,
                // ),
                Text(
                  time!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.thumb_up, color: Colors.grey[700]),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Like (${like})",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.share, color: Colors.grey[700]),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.flag, color: Colors.grey[700]),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Flag",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
