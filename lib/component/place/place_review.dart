// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class modal_Review_Place extends StatefulWidget {
  const modal_Review_Place({super.key});

  @override
  State<modal_Review_Place> createState() => _modal_Review_PlaceState();
}

class _modal_Review_PlaceState extends State<modal_Review_Place> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sarabun',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "รีวิวสถานที่",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close_outlined,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                  child: SizedBox(
                    width: 374,
                    height: 249,
                    child: Image(
                      image: NetworkImage(
                          "https://www.dayoutwiththekids.co.uk/hub/wp-content/uploads/2022/10/shutterstock_2167898631-scaled.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ห้างสรรพสินค้าโรบินสัน ไลฟ์สไตล์ บุรีรัมย์",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: RatingBar(
                      initialRating: 4.5,
                      minRating: 0,
                      maxRating: 5,
                      allowHalfRating: true,
                      itemSize: 40.0,
                      ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Colors.yellow),
                        half: const Icon(Icons.star_half, color: Colors.yellow),
                        empty:
                            const Icon(Icons.star_border, color: Colors.grey),
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    child: SizedBox(
                      width: 375,
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
