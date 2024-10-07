import 'package:flutter/material.dart';
import 'package:mega_mall_app/home.dart';
import 'package:mega_mall_app/screen/reset_password_screen.dart';
import 'package:mega_mall_app/screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hasValue = false;
  TextEditingController emailController =
      TextEditingController();
  TextEditingController passwordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Welcome back to Mega Mall",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Silahkan masukan data untuk login',
                    style: TextStyle(
                        color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text('Email/Phone'),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 55,
                    width: 355,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 234, 234, 234),
                        borderRadius:
                            BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        if (emailController
                                .text.isNotEmpty &&
                            passwordController
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
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'Enter your Email/Phone number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Password'),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 55,
                    width: 355,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 234, 234, 234),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        if (emailController
                                .text.isNotEmpty &&
                            passwordController
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter password',
                        suffixIcon: Icon(
                          Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
                        borderRadius:
                            BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
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
                            const MyHomePage(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPasswordScreen())),
                      ),
                      // SizedBox(width:,),
                      InkWell(
                        child: Container(
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Color(0xff3669C9),
                                fontSize: 15),
                          ),
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignUpScreen(),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
