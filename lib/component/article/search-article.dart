// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import 'package:new_app/component/article/detail_article.dart';

class SearchArticle extends StatefulWidget {
  const SearchArticle({Key? key}) : super(key: key);

  @override
  State<SearchArticle> createState() => _SearchArticleState();
}

class _SearchArticleState extends State<SearchArticle> {
  final searchTextController = TextEditingController();
  int textSearchLength = 0;
  Widget customSearchBar = Text(
    'Korat.com',
    style: TextStyle(color: meMsg),
  );
  Icon cancleIcon = const Icon(
    Icons.cancel,
  );
  Icon setcancleIcon = const Icon(
    Icons.cancel,
  );
  Icon IconSearch = const Icon(
    Icons.search,
  );
  Icon canclenull = const Icon(
    (null),
  );
  final List<Map<String, dynamic>> _allArticle = [
    {
      "id": 1,
      "title":
          " เกาะมุก ได้ชื่อว่า “ถ้ำมรกตอันล้ำค่าแห่งอันดามัน” เป็นเกาะที่ใหญ่เป็นอันดับที่ 3 ของท้องทะเลตรังเลยทีเดียว นอกจากชาดหาดที่สวยงามแล้ว",
      "tag": "#ภูเขา",
      "pin": 1
    },
    {
      "id": 2,
      "title":
          "สำหรับกิจกรรมดีๆ ในส่วนของ Country Club นั้นจะมีหลายอย่างมากๆ ค่ะ ทั้งให้เราได้ไปสัมผัสประสบการณ์สุดมันส์ด้วยกิจกรรมโดนๆ ",
      "tag": "#ภูเขา",
      "pin": 2
    },
    {
      "id": 3,
      "title":
          "ท่ามกลางธรรมชาติสวยๆ ได้อีกด้วยค่ะ เรียกได้ว่ากิจกรรมแน่นสุดๆ มาเที่ยวเขาใหญ่ทั้งที ต้องห้ามพลาดเลยน้า...",
      "tag": "#ทะเล",
      "pin": 1
    },
    {
      "id": 4,
      "title":
          "จะพลาดได้ยังไงกับแหล่งสูดอากาศบริสุทธิ์ใกล้กรุงเทพฯ อย่าง อุทยานแห่งชาติเขาใหญ่ ที่ครอบคลุม 4 จังหวัด คือ จังหวัดสระบุรี",
      "tag": "#ทะเล",
      "pin": 2
    },
    {
      "id": 5,
      "title":
          "สำหรับกิจกรรมดีๆ ในส่วนของ Country Club นั้นจะมีหลายอย่างมากๆ ค่ะ ทั้งให้เราได้ไปสัมผัสประสบการณ์สุดมันส์ด้วยกิจกรรมโดนๆ ",
      "tag": "#ภูเขา",
      "pin": 1
    },
  ];

  List<Map<String, dynamic>> _fatchArticle = [];

  late bool _sortSearchArticle = true;

  @override
  initState() {
    _fatchArticle = _allArticle;
    super.initState();
    _sorttingSearchArticle(!_sortSearchArticle);
  }

  void _sorttingSearchArticle(bool ascending) {
    setState(() {
      _sortSearchArticle = ascending;
      _allArticle.sort((a, b) => ascending
          ? b['pin'].compareTo(a['pin'])
          : a['pin'].compareTo(b['pin']));
    });
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allArticle;
    } else {
      results = _allArticle
          .where((user) => user["title"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      results = _allArticle
          .where((user) =>
              user["tag"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _fatchArticle = results;
    });
  }

  void clearText() {
    searchTextController.clear();
    setState(() {
      _fatchArticle = _allArticle;
      canclenull = const Icon(
        (null),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundCampaign,
        leading: SizedBox(
            height: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.black12,
            )),
        title: Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: SizedBox(
            height: 40,
            child: Container(
              color: Colors.white,
              child: TextField(
                onChanged: (value) {
                  _runFilter(value);
                  textSearchLength = value.length;
                  if (textSearchLength >= 1) {
                    setState(() {
                      canclenull = cancleIcon;
                    });
                  } else if (textSearchLength < 1) {
                    setState(() {
                      canclenull = const Icon(
                        (null),
                      );
                    });
                  }
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black26, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: backgroundCampaign, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'ค้นหาบทความ',
                  hintStyle: TextStyle(color: searchIcon),
                  prefixIcon: IconSearch,
                  prefixIconColor: searchIcon,
                  suffixIcon: IconButton(
                    onPressed: clearText,
                    icon: canclenull,
                  ),
                  suffixIconColor: searchIcon,
                  contentPadding: const EdgeInsets.only(top: 1.5, bottom: 1.5),
                ),
                controller: searchTextController,
              ),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Column(
            children: [
              Expanded(
                child: _fatchArticle.isNotEmpty
                    ? ListView.builder(
                        itemCount: _fatchArticle.length,
                        itemBuilder: (context, index) => SizedBox(
                          key: ValueKey(
                            _fatchArticle[index]["title"],
                          ),
                          width: 440,
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 20),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Detail_Article()),
                                      );
                                    },
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                                  'https://cms.dmpcdn.com/travel/2023/05/22/f63d2640-f878-11ed-af05-3fd3e28eca17_webp_original.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.white),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .only(
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                      color: Colors.white),
                                                  child: Container(
                                                      child: _fatchArticle[
                                                                      index]
                                                                  ["pin"] ==
                                                              1
                                                          ? SizedBox(
                                                              width: 80,
                                                              child: Center(
                                                                child: Text(
                                                                  "เเนะนำ",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color:
                                                                          meMsg),
                                                                ),
                                                              ),
                                                            )
                                                          : const SizedBox()),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Expanded(
                                              child: SizedBox(
                                                width: 340,
                                                child: Column(
                                                  children: [
                                                    Text(_fatchArticle[index]
                                                        ['title'])
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
                      )
                    : const Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Icon(
                              Icons.search,
                              size: 150,
                            ),
                            Text("ไม่พบสิ่งใดที่ตรงกับการค้นหา")
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
