import 'package:epics_project/components/appointment_card.dart';
import 'package:epics_project/components/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "ADD / ADHD",
    },
    {
      "icon": FontAwesomeIcons.brain,
      "category": "Decoding Difficulties",
    },
    {
      "icon": FontAwesomeIcons.book,
      "category": "Learning Difficulties",
    },
    {
      "icon": FontAwesomeIcons.readme,
      "category": "Reading Difficulties",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      //body
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Mehak',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  )
                ],
              ),
              Config.spaceMedium,
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Config.spaceSmall,
              SizedBox(
                height: Config.heightSize * 0.05,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(medCat.length, (index) {
                    return Card(
                      margin: const EdgeInsets.only(right: 20),
                      color: Config.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              medCat[index]['icon'],
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              medCat[index]['category'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Config.spaceSmall,
              const Text(
                'Appointments Today',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Config.spaceSmall,
              const AppointmentCard(),
              Config.spaceSmall,
              const Text(
                'Top Doctors',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Config.spaceSmall,
              Column(
                children: List.generate(10, (index) {
                  return const DoctorCard(
                    route: 'doc_details',
                  );
                }),
              )
                      ],
                    ),
            )),
      ),
    );
  }
}
