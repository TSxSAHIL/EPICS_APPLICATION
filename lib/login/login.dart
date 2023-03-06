// ignore_for_file: unused_import

import 'package:epics_project/screens/homapage.dart';
import 'package:epics_project/login/register.dart';
import 'package:epics_project/screens/main_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/LoginBG.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(0xff000000)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Enter Your Username & Password',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(0xff565656)),
                  ),
                  const SizedBox(
                    height: 125,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B6B6B)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: _isVisible ? false : true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B6B6B)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainLayout()),
                          );
                      },
                      child: Container(
                        height: 54,
                        width: 229,
                        decoration: BoxDecoration(
                          color: const Color(0xff000000),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              fontSize: 28,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Center(
                              child: Text(
                            "Forgot Password ",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                color: Color(0xff6B6B6B)),
                          ))),
                      const SizedBox(
                        height: 8,
                      ),
                      Center(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: const Text(
                          "Create a New Account ",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              color: Color(0xff6B6B6B)),
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
