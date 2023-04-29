// ignore_for_file: unused_import, duplicate_import
import 'package:epics_project/screens/appointment.dart';
import 'package:epics_project/screens/homapage.dart';
import 'package:epics_project/screens/texttospeech.dart';
import 'package:epics_project/screens/tts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:epics_project/screens/texttospeech.dart';


class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: const [
          HomePage(),
          AppointmentPage(),
          TTS()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.deepPurpleAccent, // Add this line
  fixedColor: Colors.white,
  currentIndex: currentPage,
  onTap: (page) {
    setState(() {
      currentPage = page;
      _page.animateToPage(page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut);
    });
  },
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
        label: 'Appointment'),
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.readme),
        label: 'Read-A-Loud'),
  ],
),
    );
  }
}
