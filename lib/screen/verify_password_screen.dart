import 'package:flutter/material.dart';
import 'package:mega_mall_app/screen/login_screen.dart';
import 'package:mega_mall_app/screen/profile_password_screen.dart';
import 'package:mega_mall_app/screen/reset_password_screen.dart';

class VerifyPasswordScreen extends StatefulWidget {
  const VerifyPasswordScreen({super.key});

  @override
  State<VerifyPasswordScreen> createState() =>
      _VerifyPasswordScreenState();
}

class _VerifyPasswordScreenState
    extends State<VerifyPasswordScreen> {
  TextEditingController messageController =
      TextEditingController();
  TextEditingController messageController2 =
      TextEditingController();
  TextEditingController messageController3 =
      TextEditingController();
  TextEditingController messageController4 =
      TextEditingController();
  bool hasValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verification',
                style: TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'we have sent a verification code to',
                style: TextStyle(
                    fontSize: 15, color: Color(0xff838589)),
              ),
              Row(
                children: [
                  Text(
                    '+234*******622',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff838589)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      child: Text(
                        'Replace?',
                        style: TextStyle(
                            color: Color(0xff3669C9),
                            fontSize: 15),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResetPasswordScreen(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    'Verification Code',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff838589)),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  InkWell(
                    child: Container(
                      child: Text(
                        'Re-Send Code?',
                        style: TextStyle(
                            color: Color(0xff3669C9),
                            fontSize: 15),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResetPasswordScreen(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 232, 230, 230),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        if (messageController
                            .text.isNotEmpty) {
                          setState(() {
                            hasValue = true;
                          });
                        } else {
                          setState(() {
                            hasValue = false;
                          });
                        }
                      },
                      controller: messageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff0C1A30),
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 232, 230, 230),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        if (messageController2
                            .text.isNotEmpty) {
                          setState(() {
                            hasValue = true;
                          });
                        } else {
                          setState(() {
                            hasValue = false;
                          });
                        }
                      },
                      controller: messageController2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff0C1A30),
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 232, 230, 230),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        if (messageController3
                            .text.isNotEmpty) {
                          setState(() {
                            hasValue = true;
                          });
                        } else {
                          setState(() {
                            hasValue = false;
                          });
                        }
                      },
                      controller: messageController3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff0C1A30),
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 232, 230, 230),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        if (messageController4
                            .text.isNotEmpty) {
                          setState(() {
                            hasValue = true;
                          });
                        } else {
                          setState(() {
                            hasValue = false;
                          });
                        }
                      },
                      controller: messageController4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff0C1A30),
                            fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'send reset code in',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff838589)),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  InkWell(
                    child: Container(
                      child: Text(
                        '03:05',
                        style: TextStyle(
                            color: Color(0xff838589),
                            fontSize: 15),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResetPasswordScreen(),
                      ),
                    ),
                  ),
                ],
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
                      'Continue',
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
                        const ProfilePasswordScreen(),
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
