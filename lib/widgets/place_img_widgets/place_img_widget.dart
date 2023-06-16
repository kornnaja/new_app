// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../component/place/place_review.dart';

class Place_Img_Widget extends StatefulWidget {
  const Place_Img_Widget({super.key});

  @override
  State<Place_Img_Widget> createState() => _Place_Img_WidgetState();
}

class _Place_Img_WidgetState extends State<Place_Img_Widget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: SizedBox(
              height: 249,
              width: 374,
              child: Image(
                image: NetworkImage(
                    "https://images.edrawmind.com/article/swot-analysis-for-restaurant/1200_800.jpg"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "บ้านเดี่ยว 2 ชั้น แบบโมเดิร์นสไตส์",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "โดย เจ๊ดา ลูกชิ้นยืนกินบุรีรัมย์",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, left: 20),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "4.0",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, right: 5),
                  child: RatingBar(
                    initialRating: 4,
                    minRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemSize: 20.0,
                    ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.yellow),
                      half: const Icon(Icons.star_half, color: Colors.yellow),
                      empty:
                          const Icon(Icons.star_border, color: Colors.yellow),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.75),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.reply_all_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "เข้ามาซอยที่ 2 แล้วเลี้ยวขวา สถานที่ติดกับสวน",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  children: [
                    Icon(Icons.place_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "132 ตำบลหนองดาด เมืองบุรีรัมย์ 31000  ",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 60, right: 30),
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side:
                                const BorderSide(width: 5, color: Colors.blue),
                          ),
                        ),
                      ),
                      child: const Text('ดูเเผนที่'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side:
                                const BorderSide(width: 5, color: Colors.blue),
                          ),
                        ),
                      ),
                      child: const Text('นำทาง'),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 30, bottom: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule_outlined,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            "วันจันทร์",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("08.00-19.00"),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันอังคาร",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันพุทธ",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันพฤหัสบดี",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันศุกร์",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันเสาร์",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              "วันอาทิตย์",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("08.00-19.00"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.call_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text("0628564853"),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.call_outlined),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("455512585"),
                        const SizedBox(
                          width: 6.42,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.content_copy_outlined,
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.abc),
                        SizedBox(
                          width: 15,
                        ),
                        Text("buriram.me : บุรีรัมย์เซราะแอง"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.face_2_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "@ buriram.me",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
            child: Container(
              color: Colors.grey[100],
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "คลังภาพจากผู้รีวิว",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 20, right: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: 82,
                          height: 90,
                          child: Image(
                            image: NetworkImage(
                                "https://cdn-contents.aduang.co/upload/637800784246404662.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "ความคิดเห็น",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7, bottom: 10),
                  child: Row(
                    children: [
                      const Text(
                        "4.0",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.25, right: 6.25),
                        child: RatingBar(
                          initialRating: 4,
                          minRating: 0,
                          maxRating: 5,
                          allowHalfRating: true,
                          itemSize: 20.0,
                          ratingWidget: RatingWidget(
                            full: const Icon(Icons.star, color: Colors.yellow),
                            half: const Icon(Icons.star_half,
                                color: Colors.yellow),
                            empty: const Icon(Icons.star_border,
                                color: Colors.yellow),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      const Text("(20รีวิว)"),
                      GestureDetector(
                        onTap: () {
                          Null;
                          //Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 130),
                          child: Row(
                            children: [
                              Text("ทั้งหมด"),
                              Icon(Icons.navigate_next_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: GestureDetector(
              onTap: () {
                // Navigator.pop(context);
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  constraints: BoxConstraints.tight(
                    Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.8),
                  ),
                  builder: (BuildContext context) {
                    return const Scaffold(
                      body: Center(child: modal_Review_Place()),
                    );
                  },
                );
              },
              child: const Text(
                "เขียนรีวิว",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 215,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14, left: 21),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://zipmex.com/static/d1af016df3c4adadee8d863e54e82331/Twitter-NFT-profile.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 9),
                          child: Row(
                            children: [
                              const Text(
                                "นายกนก ดีใจ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text("เขียนรีวิว 15/8/2021 19.22"),
                              const SizedBox(
                                width: 50,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
