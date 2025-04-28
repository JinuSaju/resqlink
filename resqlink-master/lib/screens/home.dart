import 'package:flutter/material.dart';
import 'package:resqlink/screens/disaster1.dart';
import 'package:resqlink/screens/disaster2.dart';
import 'package:resqlink/screens/disaster3.dart';
import 'package:resqlink/screens/donations.dart'; // Import donations.dart

import 'package:resqlink/screens/earthquake.dart';
import 'package:resqlink/screens/fire.dart';
import 'package:resqlink/screens/flood.dart';
import 'package:resqlink/screens/landslide.dart';
import 'package:resqlink/screens/profile.dart';
import 'package:resqlink/screens/rain.dart';
import 'package:resqlink/screens/rescue.dart';
import 'package:resqlink/screens/tsunami.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: 375,
          height: 667,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 118),
          child: Container(
            height: 25,
            child: Image.network(
              "https://i.postimg.cc/XNrdc26d/ResQLink.png",
              color: Colors.black,
            ),
          ),
        ),
        /*Padding(
          padding: const EdgeInsets.only(left: 25, top: 75),
          child: Container(
            width: 325,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 215),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 235, top: 215),
          child: Container(
            width: 110,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF54BE49),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),*/
        Padding(
          padding: const EdgeInsets.only(top: 330, left: 28),
          child: Text(
            "Disaster Guidelines",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 71, 74, 83)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 600),
          child: Container(
            width: 375,
            height: 87,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 370, left: 27),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Earthquake",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tsunami()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Tsunami",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Fire()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Fire",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Flood()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Flood",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Landslide()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Landslide",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Rain()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Heavy rain",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 25),
          child: Container(
            height: 40,
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Disaster, Location, Status',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2), // Set outline color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 167, 168, 169),
                      width: 2), // Color when focused
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 617, left: 32),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Team()));
                },
                icon: Icon(Icons.groups_2),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Donations()));
                },
                icon: Icon(Icons.attach_money_outlined),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                icon: Icon(Icons.person),
                color: Colors.white,
                iconSize: 32,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    width: 315,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(162, 71, 74, 83),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.5, // For the image opacity
                            child: Image.network(
                              "https://i.postimg.cc/3wsDHbMd/Florida-Hurricane.webp",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          // Animated Text that rises down
                          Center(
                            child: TweenAnimationBuilder<Offset>(
                                tween: Tween<Offset>(
                                  begin: Offset(0, -1), // Start above
                                  end: Offset(0, 0), // End at center
                                ),
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.easeOut,
                                builder: (context, offset, child) {
                                  return Transform.translate(
                                    offset: Offset(0, offset.dy * 100),
                                    child: child,
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Myanmar Earthquake',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          'A magnitude 7.7–7.9 quake struck near Mandalay, Myanmar, causing significant destruction and over 5,000 casualties',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF474A53),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        One()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                "View details",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 315,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(162, 71, 74, 83),
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.5, // For the image opacity
                            child: Image.network(
                              "https://i.postimg.cc/LXV40ymd/image.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          // Animated Text that rises down
                          Center(
                            child: TweenAnimationBuilder<Offset>(
                                tween: Tween<Offset>(
                                  begin: Offset(0, -1), // Start above
                                  end: Offset(0, 0), // End at center
                                ),
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.easeOut,
                                builder: (context, offset, child) {
                                  return Transform.translate(
                                    offset: Offset(0, offset.dy * 100),
                                    child: child,
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Lanzarote, Canary Islands ',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          'A two-hour rainstorm overwhelmed local infrastructure, causing significant flooding and power outages',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF474A53),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Two()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                "View details",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 315,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(162, 71, 74, 83),
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.5, // For the image opacity
                            child: Image.network(
                              "https://i.postimg.cc/mkD4pBdM/image.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          // Animated Text that rises down
                          Center(
                            child: TweenAnimationBuilder<Offset>(
                                tween: Tween<Offset>(
                                  begin: Offset(0, -1), // Start above
                                  end: Offset(0, 0), // End at center
                                ),
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.easeOut,
                                builder: (context, offset, child) {
                                  return Transform.translate(
                                    offset: Offset(0, offset.dy * 100),
                                    child: child,
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        'North Sikkim (April 25) ',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Massive landslides struck the Munshithang and Lema/Bob areas on the Lachen-Chungthang road, leaving approximately 1,000 tourists stranded.',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF474A53),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Three()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                "View details",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
