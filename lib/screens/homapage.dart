import 'package:epics_project/screens/doctors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'texttospeech.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[    Text('Home Page'),    TextToSpeech(),    DoctorsPage(),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          SizedBox(
            width: 10,
          )
        ],
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Read Ease'),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black12,
              )
            ],
            borderRadius: BorderRadius.circular(100),
          ),
          child: SafeArea(
            child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat_bubble,
                  text: 'Text to Speech',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Doctors',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}