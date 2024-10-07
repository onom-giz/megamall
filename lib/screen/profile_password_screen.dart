import 'package:flutter/material.dart';
import 'package:mega_mall_app/home.dart';
import 'package:mega_mall_app/screen/login_screen.dart';
import 'package:mega_mall_app/screen/reset_password_screen.dart';

class ProfilePasswordScreen extends StatefulWidget {
  const ProfilePasswordScreen({super.key});

  @override
  State<ProfilePasswordScreen> createState() =>
      _ProfilePasswordScreenState();
}

class _ProfilePasswordScreenState
    extends State<ProfilePasswordScreen> {
  TextEditingController emailController =
      TextEditingController();
  TextEditingController passwordController =
      TextEditingController();
  TextEditingController profileController =
      TextEditingController();
  TextEditingController refrenceController =
      TextEditingController();
  bool hasValue = false;
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
                    "Profile & Password",
                    style: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Complete the following final data to enter the Mega Mall application',
                    style: TextStyle(
                        color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text('Full Name'),
                  const SizedBox(
                    height: 10,
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
                        if (profileController
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
                      controller: profileController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Profile Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Password'),
                  const SizedBox(
                    height: 10,
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
                      obscureText: true,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.info,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          'password must be 6 characters or more'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Referal Code (Optional)'),
                  const SizedBox(
                    height: 10,
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
                        if (refrenceController
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
                      obscureText: true,
                      controller: refrenceController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Code',
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
                                LoginScreen(),
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
