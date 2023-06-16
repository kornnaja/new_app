import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import '../../widgets/place_img_widgets/place_img_widget.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sarabun',
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: appBarPlace,
          title: const Text(
            "สถานที่",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Place_Img_Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
