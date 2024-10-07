import 'package:flutter/material.dart';

import 'package:mega_mall_app/screen/update_password_screen.dart';
import 'package:mega_mall_app/screen/verify_password_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState
    extends State<ResetPasswordScreen> {
  TextEditingController emailController =
      TextEditingController();
  bool hasValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reset Password',
                style: TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your Email/Phone number to reset your Password',
                style: TextStyle(
                    fontSize: 14, color: Color(0xff838589)),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Email/Phone'),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 55,
                  width: 355,
                  decoration: BoxDecoration(
                    color:
                        Color.fromARGB(255, 232, 230, 230),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (emailController.text.isNotEmpty) {
                        setState(() {
                          hasValue = true;
                        });
                      } else {
                        setState(() {
                          hasValue = false;
                        });
                      }
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          'Enter your Email/Phone number',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  height: 55,
                  width: 355,
                  decoration: BoxDecoration(
                    color: hasValue
                        ? Color(0xff3669C9)
                        : Color(0xffC4C5C4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Reset',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const VerifyPasswordScreen(),
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
