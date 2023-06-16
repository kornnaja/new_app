// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import 'package:new_app/component/article/detail_article.dart';

class Card_Article extends StatefulWidget {
  const Card_Article({super.key});

  @override
  State<Card_Article> createState() => _Card_ArticleState();
}

class _Card_ArticleState extends State<Card_Article> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:   SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 440,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detail_Article()),
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 8,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 380,
                                  height: 160,
                                  child: Image.network(
                                    'https://www.ipattaya.co/wp-content/uploads/2023/01/Artboard-35.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Expanded(
                                    child: SizedBox(
                                      width: 340,
                                      child: Column(
                                        children: [
                                          Text(
                                              'วันนี้แอดมินจะมาแนะนำที่เที่ยวทะเลพัทยาหน้าร้อนบอกเลยว่าซัมเมอร์นี้ต้องไม่พลาด!'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 440,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 8,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: 380,
                                    height: 160,
                                    child: Image.network(
                                      'https://www.ipattaya.co/wp-content/uploads/2023/01/Artboard-35.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 20, left: 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(12),
                                              bottomRight: Radius.circular(12)),
                                          color: Colors.white),
                                      child: SizedBox(
                                        width: 80,
                                        child: Center(
                                          child: Text(
                                            "เเนะนำ",
                                            style: TextStyle(
                                                fontSize: 16, color: meMsg),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Expanded(
                                  child: SizedBox(
                                    width: 340,
                                    child: Column(
                                      children: [
                                        Text(
                                            'วันนี้แอดมินจะมาแนะนำที่เที่ยวทะเลพัทยาหน้าร้อนบอกเลยว่าซัมเมอร์นี้ต้องไม่พลาด!'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
