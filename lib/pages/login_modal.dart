// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use

// ignore: unused_import
import 'dart:async';
import 'package:flutter/material.dart';
import 'forget_password_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "อีเมล/เบอร์โทรศัพท์",
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
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "กรอกอีเมล/เบอร์โทรศัพท์",
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
                        Text("รหัสผ่าน"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.maybePop(context);
                              showModalBottomSheet<void>(
                                context: context,
                                isScrollControlled: true,
                                constraints: BoxConstraints.tight(Size(
                                    MediaQuery.of(context).size.width,
                                    MediaQuery.of(context).size.height * 0.3)),
                                builder: (BuildContext context) {
                                  return Scaffold(
                                    body: Center(child: modal_forget()),
                                  );
                                },
                              );
                            },
                            child: const Text('ลืมรหัสผ่าน?'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            child: Text(
                              "Recaptcha",
                              style: TextStyle(fontSize: 35, color: Colors.red),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 105, 182, 245),
                              onPrimary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text('เข้าสู่ระบบ'),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const <Widget>[
                                Expanded(
                                    child: Divider(
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "หรือ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Colors.grey,
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                          child: Image(
                                            image: NetworkImage(
                                                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png"),
                                          ),
                                        ),
                                        Text(
                                          " FaceBook",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                          child: Image(
                                            image: NetworkImage(
                                                "https://img.freepik.com/free-icon/search_318-265146.jpg"),
                                          ),
                                        ),
                                        Text(
                                          " Google",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
