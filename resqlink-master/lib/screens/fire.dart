import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Fire extends StatelessWidget {
  const Fire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Guidelines"),
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
              height: 667,
              width: 375,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 70),
              child: Container(
                height: 480,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 71, 74, 83),
                ),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text("Fire Safety Guidelines 🔥",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before a Fire (Preparedness)

✅ Install Fire Safety Equipment
Smoke alarms on every floor and in key areas (bedrooms, kitchen).
Fire extinguishers in accessible locations (kitchen, garage, near exits).

✅ Create an Escape Plan
Identify two exit routes from every room.
Practice fire drills with your family or colleagues.
Designate a safe meeting point outside.

✅ Keep Fire Hazards in Check
Avoid overloading electrical outlets.
Store flammable items (gasoline, chemicals) safely.
Never leave cooking unattended.

✅ Know How to Use a Fire Extinguisher
Use the PASS method:
Pull the pin.
Aim at the base of the fire.
Squeeze the handle.
Sweep side to side.
During a Fire (Response)

If You See a Fire
🚨 Alert Others & Call Emergency Services (Fire Department: 101 in India, 911 in the U.S.)

If You Are Inside a Building
🔹 Evacuate Immediately!
Stay Low (crawl under smoke, as heat and toxic fumes rise).
Check Doors for Heat before opening (use the back of your hand).
Close Doors Behind You to slow the fire’s spread.

🚫 DO NOT use elevators!🚫 DO NOT re-enter a burning building!
📌 If trapped in a room, block gaps under the door with a wet cloth and signal for help from a window.

If Your Clothes Catch Fire
🔥 STOP, DROP, and ROLL
Stop running.
Drop to the ground.
Roll back and forth to smother the flames.


After a Fire (Recovery & Safety Measures)

✅ Check for Injuries & Seek Medical Help
Treat minor burns with cool water.
Call emergency services for severe burns or smoke inhalation.

✅ Wait for Authorities to Declare the Area Safe
Avoid re-entering the building until officials allow it.

✅ Check for Structural Damage & Hazards
Be cautious of weakened walls, floors, and electrical hazards.

✅ Help Others & Report Damage
Assist neighbors, elderly, or disabled individuals.
Report gas leaks or damaged power lines to authorities.""",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 580),
              child: Container(
                width: 375,
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xFF474A53),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
              ),
            ),
          ],
        ));
  }
}
