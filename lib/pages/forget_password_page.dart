// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class modal_forget extends StatefulWidget {
  const modal_forget({super.key});

  @override
  State<modal_forget> createState() => _modal_forgetState();
}

class _modal_forgetState extends State<modal_forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "รีเซ็ตรหัสผ่าน",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
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
                          hintText: 'กรอกอีเมล',
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
                          "กรุณาระบุอีเมลของท่าน ระบบจะส่งลิื้งค์เพื่อกำหนดรหัสยืนยัน",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color.fromARGB(255, 105, 182, 245), // foreground
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      constraints: BoxConstraints.tight(Size(
                          MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height * 0.7)),
                      builder: (BuildContext context) {
                        return Scaffold(
                          body: Center(child: modal_forget2()),
                        );
                      },
                    );
                  },
                  child: Center(
                    child: Text('ยืนยัน'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class modal_forget2 extends StatefulWidget {
  const modal_forget2({super.key});

  @override
  State<modal_forget2> createState() => _modal_forget2State();
}

class _modal_forget2State extends State<modal_forget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "รีเซ็ตรหัสผ่าน",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
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
                              style: TextStyle(color: Colors.black),
                            ),
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
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "testja@gmail.com",
                            hintStyle: TextStyle(fontSize: 15,color: Colors.black),
                            border: OutlineInputBorder(),
                            enabled: false,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text("รหัส OTP"),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "รหัสอ้างอิง : ",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          Text(
                            "ABC555",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 350,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: OTPTextField(
                                length: 6,
                                width: MediaQuery.of(context).size.width,
                                fieldWidth: 50,
                                style: TextStyle(fontSize: 14),
                                textFieldAlignment:
                                    MainAxisAlignment.spaceAround,
                                fieldStyle: FieldStyle.box,
                                onCompleted: (pin) {
                                  print("Completed: " + pin);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "กรุณากรอกรหัสภายใน ",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          Text(
                            "5.00",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(137, 233, 4, 4)),
                          ),
                          Text(
                            "นาที",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(136, 30, 29, 29)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "รหัสผ่านใหม่",
                              style: TextStyle(color: Colors.black),
                            ),
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
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            hintText: "กรอกรหัสผ่านใหม่",
                            hintStyle: TextStyle(fontSize: 15),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text("ยืนยันรหัสผ่่าน"),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
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
                        height: 29,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(
                            255, 105, 182, 245), // foreground
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          constraints: BoxConstraints.tight(Size(
                              MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height * 0.7)),
                          builder: (BuildContext context) {
                            return Scaffold(
                              body: Center(child: modal_forget2()),
                            );
                          },
                        );
                      },
                      child: Center(
                        child: Text('ยืนยัน'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
