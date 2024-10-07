import 'package:flutter/material.dart';
import 'package:mega_mall_app/screen/login_screen.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() =>
      _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState
    extends State<UpdatePasswordScreen> {
  TextEditingController passwordController =
      TextEditingController();
  TextEditingController confirmController =
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
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Update Password',
                style: TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Complete the following final data to enter the Mega Mall application',
                style: TextStyle(
                    fontSize: 14, color: Color(0xff838589)),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'New Password',
                style: TextStyle(
                    fontSize: 15, color: Color(0xff0C1A30)),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: 25),
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 230, 230),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (value) {
                    if (passwordController
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
                    hintText: 'Rahasia12345',
                    hintStyle: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 15),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
              SizedBox(
                height: 40,
              ),
              Text(
                'Confirm New Password',
                style: TextStyle(
                    fontSize: 15, color: Color(0xff0C1A30)),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: 25),
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 230, 230),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (value) {
                    if (passwordController
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
                  controller: confirmController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Rahasia12345',
                    hintStyle: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 15),
                    suffixIcon: Icon(Icons.visibility),
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
                      'Save Update',
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
                        const LoginScreen(),
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
