// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_app/pages/register_modal.dart';
import 'package:new_app/pages/login_modal.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.90,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 30,
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    )),
              ],
              bottom: const TabBar(
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "สมัครสมาชิก",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Login(),
                register_Modal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
