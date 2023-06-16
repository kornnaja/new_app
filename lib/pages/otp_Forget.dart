import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class otp_Forget extends StatefulWidget {
  const otp_Forget({super.key});

  @override
  State<otp_Forget> createState() => _otp_ForgetState();
}

class _otp_ForgetState extends State<otp_Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            child: OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 80,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ),
        ],
      ),
    );
  }
}
