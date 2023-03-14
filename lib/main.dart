import 'package:epics_project/screens/appointment.dart';
import 'package:epics_project/screens/booking_page.dart';
import 'package:epics_project/screens/doctor_details.dart';
import 'package:epics_project/screens/homapage.dart';
import 'package:epics_project/login/register.dart';
import 'package:epics_project/screens/main_layout.dart';
import 'package:epics_project/screens/success.dart';
import 'package:epics_project/utils/config.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        focusColor: Config.primaryColor,
        border: Config.outlinedBorder,
        focusedBorder: Config.focusBorder,
        errorBorder: Config.errorBorder,
        enabledBorder: Config.outlinedBorder,
        floatingLabelStyle: TextStyle(color: Config.primaryColor),
        prefixIconColor: Colors.black38,
      ),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Config.primaryColor,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey.shade700,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
    routes: {
      'login': (context) => const LoginPage(),
      'register': (context) => const RegisterPage(),
      'homepage': (context) => const HomePage(),
      'appointment': (context) => const AppointmentPage(),
      'doc_details': (context) => const DoctorDetails(),
      'booking_page': (context) => const BookingPage(),
      'successbooked': (context) => const AppointmentBooked(),
      'main': (context) => const MainLayout(),
    },
  ));
}
