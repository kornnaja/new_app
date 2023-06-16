// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'check_box.dart';

class register_Modal extends StatefulWidget {
  const register_Modal({super.key});

  @override
  State<register_Modal> createState() => _register_ModalState();
}

class _register_ModalState extends State<register_Modal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "อีเมล",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'กรอกรหัสผ่าน',
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "เบอร์โทรศัพท์",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: CountryDropdown(
                          iconSize: 15,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: "เลือก"),
                          printCountryName: true,
                          initialCountryData:
                              PhoneCodes.getCountryDataByPhone('66'),
                          onCountrySelected: (PhoneCountryData value) {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: Container(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '0XX XXX XXXX',
                                hintStyle: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("รหัสผ่าน"),
                      ),
                      Container(
                        child: Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'กรอกรหัสผ่าน',
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "ยืนยันรหัสผ่าน",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'กรอกรหัสผ่าน',
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: MyStatefulWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "เมื่อคลิ้กสมัครใช้งาน",
                                        style: TextStyle(fontSize: 14),
                                        maxLines: 3,
                                      ),
                                      Text("เเสดงว่าคุณยินยอมตามข้อกำหนด"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "เมื่อคลิ้กสมัครใช้งาน",
                                        style: TextStyle(fontSize: 14),
                                        maxLines: 3,
                                      ),
                                      Text("เเสดงว่าคุณยินยอมตามข้อกำหนด"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              255, 105, 182, 245), // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text('ลงทะเบียน'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
