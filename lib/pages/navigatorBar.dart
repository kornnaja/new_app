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
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        fontFamily: 'Sarabun',
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(left: 60, right: 30),
              child: TabBar(
                indicatorColor: Colors.blue[100],
                tabs: [
                  Tab(text: 'เข้าสู่ระบบ'),
                  Tab(text: 'สมัครสมาชิก'),
                ],
                labelColor: Colors.black,
              ),
            ),
          ), //appbar
          body: TabBarView(
            children: [
              Login(),
              register_Modal(),
            ],
          ),
        ),
      ),
    );
  }
}
