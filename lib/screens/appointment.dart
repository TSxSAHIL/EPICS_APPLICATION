// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/config.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

enum FilterStatus { Upcoming, Complete, Cancel }

class _AppointmentPageState extends State<AppointmentPage> {
  FilterStatus status = FilterStatus.Upcoming;
  Alignment _alignment = Alignment.centerLeft;
  List<dynamic> schedules = [
    {
      "doctor_name": "Anuja Kelkar",
      "doctor_profile": "assets/doctor_1.jpg",
      "category": "ADD/ADHD",
      "status": FilterStatus.Upcoming
    },
    {
      "doctor_name": "Deep Jain",
      "doctor_profile": "assets/doctor_2.jpg",
      "category": "Decoding Expert",
      "status": FilterStatus.Complete,
    },
    {
      "doctor_name": "Bhushan Gera",
      "doctor_profile": "assets/doctor_3.jpg",
      "category": "Reading Difficulties Expert",
      "status": FilterStatus.Cancel,
    },
    {
      "doctor_name": "Rachel Varma",
      "doctor_profile": "assets/doctor_4.jpg",
      "category": "ADD/ADHD",
      "status": FilterStatus.Upcoming,
    },
    {
      "doctor_name": "Ratan Sood",
      "doctor_profile": "assets/doctor_5.jpg",
      "category": "Learning Difficulties Expert",
      "status": FilterStatus.Complete,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules = schedules.where((var schedule) {
  switch (schedule['status']) {
    case 'Upcoming':
      schedule['status'] = FilterStatus.Upcoming;
      break;
    case 'Complete':
      schedule['status'] = FilterStatus.Complete;
      break;
    case 'Cancel':
      schedule['status'] = FilterStatus.Cancel;
      break;
  }
  return schedule['status'] == status;
}).toList();

    // Use the filteredSchedules list as needed
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Appointment Schedule',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Config.spaceSmall,
          Container(
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (FilterStatus filterStatus in FilterStatus.values)
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (filterStatus == FilterStatus.Upcoming) {
                            status = FilterStatus.Upcoming;
                            _alignment = Alignment.centerLeft;
                          } else if (filterStatus == FilterStatus.Complete) {
                            status = FilterStatus.Complete;
                            _alignment = Alignment.center;
                          } else if (filterStatus == FilterStatus.Cancel) {
                            status = FilterStatus.Cancel;
                            _alignment = Alignment.centerRight;
                          }
                        });
                      },
                      child: Center(
                        child: Text(filterStatus.name),
                      ),
                    ))
                ],
              ),
            ),
          ),
          AnimatedAlign(
            alignment: _alignment,
            duration: const Duration(milliseconds: 200),
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Config.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  status.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Config.spaceSmall,
          Expanded(
            child: ListView.builder(
                itemCount: filteredSchedules.length,
                itemBuilder: (((context, index) {
                  var schedule = filteredSchedules[index];
                  bool isLastElement =
                      filteredSchedules.length + 1 == index;
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: !isLastElement
                        ? const EdgeInsets.only(bottom: 20)
                        : EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    schedule['doctor_profile']),
                              ),
                              Config.spaceSmall,
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    schedule['doctor_name'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    schedule['category'],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // ScheduleCard(),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Config.primaryColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Config.primaryColor,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Reschedule',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }))),
          ),
        ],
      ),
    ));
  }
}

// class ScheduleCard extends StatelessWidget {
//   const ScheduleCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       width: double.infinity,
//       padding: const EdgeInsets.all(20),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: const [
//           Icon(
//             Icons.calendar_month,
//             color: Colors.white,
//             size: 15,
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           Text(
//             'Monday, 6/03/2023',
//             style: TextStyle(color: Colors.white),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Icon(
//             Icons.access_alarm,
//             color: Colors.white,
//             size: 17,
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           Flexible(
//               child: Text(
//             '2:00PM',
//             style: TextStyle(color: Colors.white),
//           ))
//         ],
//       ),
//     );
//   }
// }
