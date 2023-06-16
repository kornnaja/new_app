// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import 'package:new_app/component/article/detail_article.dart';
import 'package:new_app/component/article/search-article.dart';

class CardArticle extends StatefulWidget {
  const CardArticle({Key? key}) : super(key: key);

  @override
  State<CardArticle> createState() => _CardArticleState();
}

class _CardArticleState extends State<CardArticle> {
  final searchTextController = TextEditingController();
  Icon customIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget customSearchBar = Text(
    'Korat.com',
    style: TextStyle(color: meMsg),
  );
  final List<Map<String, dynamic>> _allArticle = [
    {
      "id": 1,
      "title":
          "สายเที่ยวที่ต้องการความชิลหน่อยๆ แอดเวนเจอร์เบาๆ กิจกรรมแน่นๆ เที่ยวได้ทั้งวันไม่มีเบื่อ! ",
      "tag": "#ภูเขา",
      "pin": 1
    },
    {
      "id": 2,
      "title":
          "ท่ามกลางธรรมชาติสวยๆ ได้อีกด้วยค่ะ เรียกได้ว่ากิจกรรมแน่นสุดๆ มาเที่ยวเขาใหญ่ทั้งที ต้องห้ามพลาดเลยน้า..",
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
          "จะพลาดได้ยังไงกับแหล่งสูดอากาศบริสุทธิ์ใกล้กรุงเทพฯ อย่าง อุทยานแห่งชาติเขาใหญ่",
      "tag": "#ทะเล",
      "pin": 2
    },
  ];

  List<Map<String, dynamic>> _fatchArticle = [];
  late bool _sortArticle = true;
  @override
  initState() {
    _fatchArticle = _allArticle;
    super.initState();
    _sorttingArticle(!_sortArticle);
  }

  void _sorttingArticle(bool ascending) {
    setState(() {
      _sortArticle = ascending;
      _allArticle.sort(
        (a, b) => ascending
            ? b['pin'].compareTo(a['pin'])
            : a['pin'].compareTo(b['pin']),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundCampaign,
        title: customSearchBar,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchArticle()),
              );
            },
            icon: customIcon,
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10),
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
                          height: 230,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 20, right: 20),
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
                                                      child: _allArticle[index]
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
