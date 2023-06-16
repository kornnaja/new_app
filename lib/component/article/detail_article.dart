// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'campaign.dart';
import 'like-article.dart';

class Detail_Article extends StatefulWidget {
  const Detail_Article({
    super.key,
  });

  @override
  State<Detail_Article> createState() => _Detail_ArticleState();
}

class _Detail_ArticleState extends State<Detail_Article> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sarabun'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Text(
            'Korat.com',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 350,
                  child: Text(
                      "10 สถานที่ช้อปปิ้งในโตเกียว บอกแหล่งช้อปปิ้งไม่อั้น พร้อมพิกัดการเดินทาง"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    child: Image(
                      image: NetworkImage(
                          "https://cloudfront.tourkrub.co/uploads/ckeditor/pictures/3798/content_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%8A%E0%B9%89%E0%B8%AD%E0%B8%9B%E0%B8%9B%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B9%83%E0%B8%99%E0%B9%82%E0%B8%95%E0%B9%80%E0%B8%81%E0%B8%B5%E0%B8%A2%E0%B8%A7_4.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                      "กิจกรรมอะไรที่สาวๆ ชื่นชอบมากที่สุด? เชื่อว่าการช้อปปิ้ง จะต้องเป็นกิจกรรมสุดโปรดของหลายๆ คนเป็นแน่ แต่เดี๋ยวนี้ไม่ใช่แค่ผู้หญิงแล้วนะ เพราะผู้ชายหลายคนก็เข้าร่วมอุดมการณ์นี้แล้วเช่นกัน การไปต่างประเทศทั้งทีมันจะต้องมีวันนึงแหละที่เราจะยกให้การช้อปปิ้ง ไม่ว่าจะเป็นซื้อของให้ตัวเองหรือซื้อของฝาก โตเกียว ประเทศญี่ปุ่นก็เป็นอีกสถานที่ที่คนไทยเรานิยมไปกัน เพราะถ้าพูดถึงเรื่องวัตถุดิบดีๆ หลายอย่างไม่ว่าจะเป็นเสื้อผ้า เครื่องสำอาง สกินแคร์ หรือขนมทานเล่นต่างๆ หลายอย่างก็มาจากประเทศญี่ปุ่น ถ้ามีโอกาสได้ไปถึงที่มีหรือจะพลาดช้อปปิ้ง วันนี้เราเลยจะมาแนะนำ สถานที่ช้อปปิ้งในโตเกียว บอกแหล่งช้อปปิ้งไม่อั้น พร้อมพิกัดการเดินทาง ให้สาวๆ หรือหนุ่มๆ ได้ไปตามกัน บอกเลยว่าเยอะมาก ห้ามพลาด! แหล่งไหนเด่นเรื่องอะไรเราเอามารวมไว้ในบทความนี้เรียบร้อยแล้ว"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    child: Image(
                      image: NetworkImage(
                          "https://cloudfront.tourkrub.co/uploads/ckeditor/pictures/3799/content_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%8A%E0%B9%89%E0%B8%AD%E0%B8%9B%E0%B8%9B%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B9%83%E0%B8%99%E0%B9%82%E0%B8%95%E0%B9%80%E0%B8%81%E0%B8%B5%E0%B8%A2%E0%B8%A7_3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                SizedBox(
                  width: 350,
                  child: Text(
                      "กิจกรรมอะไรที่สาวๆ ชื่นชอบมากที่สุด? เชื่อว่าการช้อปปิ้ง จะต้องเป็นกิจกรรมสุดโปรดของหลายๆ คนเป็นแน่ แต่เดี๋ยวนี้ไม่ใช่แค่ผู้หญิงแล้วนะ เพราะผู้ชายหลายคนก็เข้าร่วมอุดมการณ์นี้แล้วเช่นกัน การไปต่างประเทศทั้งทีมันจะต้องมีวันนึงแหละที่เราจะยกให้การช้อปปิ้ง ไม่ว่าจะเป็นซื้อของให้ตัวเองหรือซื้อของฝาก โตเกียว ประเทศญี่ปุ่นก็เป็นอีกสถานที่ที่คนไทยเรานิยมไปกัน เพราะถ้าพูดถึงเรื่องวัตถุดิบดีๆ หลายอย่างไม่ว่าจะเป็นเสื้อผ้า เครื่องสำอาง สกินแคร์ หรือขนมทานเล่นต่างๆ หลายอย่างก็มาจากประเทศญี่ปุ่น ถ้ามีโอกาสได้ไปถึงที่มีหรือจะพลาดช้อปปิ้ง วันนี้เราเลยจะมาแนะนำ สถานที่ช้อปปิ้งในโตเกียว บอกแหล่งช้อปปิ้งไม่อั้น พร้อมพิกัดการเดินทาง ให้สาวๆ หรือหนุ่มๆ ได้ไปตามกัน บอกเลยว่าเยอะมาก ห้ามพลาด! แหล่งไหนเด่นเรื่องอะไรเราเอามารวมไว้ในบทความนี้เรียบร้อยแล้ว"),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "เเท็กที่เกี่ยวข้อง",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26)),
                            child: InkWell(
                              child: Text(
                                "#เที่ยวเกาหลี",
                                style: TextStyle(color: Colors.black38),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26)),
                            child: InkWell(
                              child: Text(
                                "#ต่างประเทศ",
                                style: TextStyle(color: Colors.black38),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: Row(
                    children: const [
                      SizedBox(
                        height: 35,
                        child: InkWell(
                          // onTap: () => Navigator.pop(context),
                          child: Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 35,
                        child: InkWell(
                          // onTap: () => Navigator.pop(context),
                          child: Image(
                            image: NetworkImage(
                                "https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-twitter-social-media-round-icon-png-image_6315985.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 35,
                        child: InkWell(
                          // onTap:() => ,
                          child: Image(
                            image: NetworkImage(
                                "https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/line-512.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 35,
                        child: InkWell(
                          // onTap: () => Navigator.pop(context),
                          child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEHFb6ifDJiZjOuXeq_zwlWh2lpnkxDSG6WQ&usqp=CAU"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: Like_Article(),
                ),
                SizedBox(
                  height: 20,
                ),
                // Comment
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 350,
                    child: CommentTreeWidget<Comment, Comment>(
                      Comment(
                        avatar: 'null',
                        userName: 'test',
                        content: ' ก้อยเนื้อเด้อเเลงนี้ ',
                      ),
                      [
                        Comment(
                            avatar: 'null',
                            userName: 'null',
                            content:
                                'A Dart template generator which helps teams template generator which helps teams template generator which helps teams'),
                        Comment(
                            avatar: 'null',
                            userName: 'null',
                            content:
                                'A Dart template generator which helps teams'),
                        Comment(
                            avatar: 'null',
                            userName: 'null',
                            content:
                                'A Dart template generator which helps teams'),
                      ],
                      treeThemeData:
                          TreeThemeData(lineColor: Colors.blue, lineWidth: 2),
                      avatarRoot: (context, data) => const PreferredSize(
                        preferredSize: Size.fromRadius(18),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(
                              "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"),
                        ),
                      ),
                      avatarChild: (context, data) => const PreferredSize(
                        preferredSize: Size.fromRadius(12),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png"),
                        ),
                      ),
                      contentChild: (context, data) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ผู้ตอบกลับ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '${data.content}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            DefaultTextStyle(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                              child: Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.thumb_up_alt_outlined),
                                      iconSize: 25,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.reply_outlined),
                                      iconSize: 25,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      contentRoot: (context, data) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ผู้สร้างความคิดเห็น',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '${data.content}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            DefaultTextStyle(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                              child: Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.thumb_up_alt_outlined),
                                      iconSize: 25,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.reply_outlined),
                                      iconSize: 25,
                                    ),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CamPaign(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
