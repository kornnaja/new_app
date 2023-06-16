import 'package:flutter/material.dart';

import '../../colors.dart';

class CamPaign extends StatefulWidget {
  const CamPaign({super.key});

  @override
  State<CamPaign> createState() => _CamPaignState();
}

class _CamPaignState extends State<CamPaign> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 350,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: backgroundCampaign,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 380,
                            height: 110,
                            child: Image.network(
                              'https://www.businessplus.co.th/ContentUploader/252/Images/banner_POS-%E0%B9%81%E0%B8%99%E0%B8%B0%E0%B8%99%E0%B8%B3%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%81%E0%B8%84%E0%B8%A1%E0%B9%80%E0%B8%9B%E0%B8%8D.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              child: SizedBox(
                                width: 300,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            'สร้างแคมเปญยอดฮิต ขายให้ปังปินาศ!')),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              size: 10,
                                            ),
                                            Text(
                                              'เริ่ม 15/05/2023 ถึง 30/06/2023',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                  "Korat.com",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            )
                                          ],
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
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           const Detail_Article()),
                      // );
                    },
                    child: Card(
                      color: backgroundCampaign,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 380,
                            height: 110,
                            child: Image.network(
                              'https://www.businessplus.co.th/ContentUploader/252/Images/banner_POS-%E0%B9%81%E0%B8%99%E0%B8%B0%E0%B8%99%E0%B8%B3%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%81%E0%B8%84%E0%B8%A1%E0%B9%80%E0%B8%9B%E0%B8%8D.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              child: SizedBox(
                                width: 300,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            'สร้างแคมเปญยอดฮิต ขายให้ปังปินาศ!')),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              size: 10,
                                            ),
                                            Text(
                                              'เริ่ม 15/05/2023 ถึง 30/06/2023',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                  "Korat.com",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            )
                                          ],
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
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           const Detail_Article()),
                      // );
                    },
                    child: Card(
                      color: backgroundCampaign,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 380,
                            height: 110,
                            child: Image.network(
                              'https://www.sentangsedtee.com/wp-content/uploads/2022/03/TH-Infographic.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              child: SizedBox(
                                width: 300,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            'สร้างแคมเปญยอดฮิต ขายให้ปังปินาศ!')),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              size: 10,
                                            ),
                                            Text(
                                              'เริ่ม 15/05/2023 ถึง 30/06/2023',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                  "Korat.com",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            )
                                          ],
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
