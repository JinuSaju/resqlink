// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rescue Teams"),
          backgroundColor: Color(0xFF474A53),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Home())); // This will take you back to the previous screen
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: 375,
              height: 667,
              child: Image.network(
                "https://i.postimg.cc/Gh88zcGY/image.png",
                opacity: AlwaysStoppedAnimation(0.4),
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Rapid Response Unit
Lead Name: Captain Arjun Mehra
Location: Mumbai, Maharashtra
Phone: +91-9876543210
Current Volunteers: 15""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Mountain Rescue Force
Lead Name: Major Priya Sharma
Location: Shimla, Himachal Pradesh
Phone: +91-9876501234
Current Volunteers: 12""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Coastal Guard Team
Lead Name: Commander Rahul Verma
Location: Chennai, Tamil Nadu
Phone: +91-9876512345
Current Volunteers: 20""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 20),
                            child: Text(
                              """
Team Name: Urban Disaster Response Squad
Lead Name: Inspector Neha Kapoor
Location: Delhi NCR
Phone: +91-9876523456
Current Volunteers: 25""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Flood Relief Taskforce
Lead Name: Officer Vivek Iyer
Location: Kochi, Kerala
Phone: +91-9876534567
Current Volunteers: 18""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Forest Fire Rescue Crew
Lead Name: Ranger Ananya Pillai
Location: Dehradun, Uttarakhand
Phone: +91-9876545678
Current Volunteers: 10""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF474A53),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              """
Team Name: Earthquake Relief force
Lead Name: Colonel Sanjay Joshi
Location: Kathmandu, Nepal
Phone: +977-9812345678
Current Volunteers: 30""",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
