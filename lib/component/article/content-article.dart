// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'detail_article.dart';

final dio = Dio();

class Card_Article extends StatefulWidget {
  const Card_Article({super.key});

  @override
  State<Card_Article> createState() => _Card_ArticleState();
}

class _Card_ArticleState extends State<Card_Article> {
  var jsonList;
  late final int id;
  late final String title;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio()
          .get('https://protocoderspoint.com/jsondata/superheros.json');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data['superheros'] as List;
        });
      } else {
        (response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0.0),
      itemCount: jsonList == null ? 0 : jsonList.length,
      itemBuilder: (BuildContext context, int index) {
        if (jsonList.length >= 5) {
          return Container(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            height: MediaQuery.of(context).size.height * 0.41,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 8,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Detail_Article(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 400,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: const Color.fromARGB(255, 95, 94, 91)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(
                          image: NetworkImage(
                            jsonList[index]['url'],
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          jsonList[index]['power'],
                          style: const TextStyle(fontFamily: 'Sarabun'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
