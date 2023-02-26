import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      bottomNavigationBar:   GNav(
        tabBorderRadius: 100,
        backgroundColor: const Color(0xff6600cc),
        color: Colors.black,
        activeColor: Colors.black,
        
        gap: 8,
        tabs:  [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconSize: 22,
            onPressed: (){
              Navigator.
            },
          ),
          
          GButton(
            icon: Icons.people,
            text: 'Doctors',
            iconSize: 22,
          ),
          GButton(
            icon: Icons.voice_chat,
            text: 'Text to Speech',
            iconSize: 22,
          ),
         
        ],
        tabMargin: const EdgeInsets.symmetric(horizontal: 1),
      ),
      
    );
  }
}
