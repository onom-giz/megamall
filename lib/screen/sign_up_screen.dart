import 'package:flutter/material.dart';
import 'package:mega_mall_app/screen/login_screen.dart';
import 'package:mega_mall_app/screen/profile_password_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController =
      TextEditingController();
  bool hasValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register Account',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0C1A30)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter your Email/Phone number ',
                style: TextStyle(
                  color: Color(0xff838589),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Email/Phone'),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 230, 230),
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
              SizedBox(
                height: 147,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Has an Account?',
                    style: TextStyle(fontSize: 14),
                  ),
                  InkWell(
                    child: Container(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Color(0xff3669C9)),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const LoginScreen(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
