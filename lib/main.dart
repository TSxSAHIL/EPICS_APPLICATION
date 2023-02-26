import 'package:epics_project/homapage.dart';
import 'package:epics_project/register.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
    routes: {
      'login': (context) => const LoginPage(),
      'register': (context) => const RegisterPage(),
      'homepage' :(context) => const HomePage(),
    },
  ));
}