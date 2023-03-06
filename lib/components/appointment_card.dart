import 'package:flutter/material.dart';

import '../utils/config.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/doctor_1.jpg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dr Anuja Kelkar',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'ADD/ADHD',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
                Config.spaceSmall,
                const ScheduleCard(),
                Config.spaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: (){}, 
                      // ignore: sort_child_properties_last
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      )),
                      const SizedBox(width: 20,),
                      Expanded(child: ElevatedButton(
                      onPressed: (){}, 
                      // ignore: sort_child_properties_last
                      child: const Text(
                        'Completed',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:const  [
          Icon(Icons.calendar_month,
          color: Colors.white,
          size: 15,
          ),
        SizedBox(width: 5,),
        Text('Monday, 6/03/2023',
        style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 20,),
        Icon(Icons.access_alarm,
        color: Colors.white,
        size: 17,
        ),
        SizedBox(width: 5,),
        Flexible(child: Text('2:00PM' , style: TextStyle(color: Colors.white),))
        ],
      ),

    );
  }
}