import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Flood extends StatelessWidget {
  const Flood({super.key});

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
                        Text("Flood Safety Guidelines 🌊",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before a Flood (Preparedness)

✅ Know Your Risk
Determine if you live in a flood-prone area (near rivers, coastlines, or low-lying areas).
Sign up for flood alerts and warnings from local authorities.

✅ Create an Emergency Plan
Identify safe evacuation routes to higher ground.
Establish a meeting point for family members if separated.
Know where to find the nearest emergency shelters.

✅ Prepare an Emergency Kit
Water, non-perishable food, medications, flashlight, batteries.
First-aid supplies, documents, and other essentials.
A battery-powered radio or a mobile phone with backup power.

✅ Secure Your Home
Elevate electrical appliances, utilities, and important documents above potential flood levels.
Seal windows and doors with sandbags if necessary.

Know how to turn off utilities (electricity, gas, and water).
During a Flood (Response)

If You Are In a Flood-Prone Area
🚨 Listen to Evacuation Orders
Follow official instructions to evacuate if told to do so.
Evacuate early—don’t wait for the floodwaters to rise.

If You Are Inside a Building
🔹 Move to Higher Ground
Go to the highest level of the building or to a safe, elevated place.
Avoid basements, as they are at higher risk of flooding.
🚫 Do NOT use elevators during a flood.

If You Are Outside
🔹 Move to Higher Ground Immediately
Avoid walking or driving through floodwaters—just six inches of fast-moving water can knock you down.
Stay away from rivers, streams, and creeks.

If You Are in a Vehicle
🔹 Never Drive Through Flooded Roads
Water can easily sweep your vehicle away.
If you’re already in the car and floodwaters are rising, abandon the vehicle immediately and move to higher ground.


After a Flood (Recovery & Safety Measures)

✅ Wait for Official Clearance
Do not return to your home until authorities declare it safe.

✅ Inspect Your Property Safely
Check for structural damage (weak walls, floors) and hazards.
Be aware of debris, broken glass, or sharp objects.

✅ Avoid Floodwater
Do not come into contact with floodwater—it may be contaminated with sewage or chemicals.

✅ Check for Electrical Hazards
Do not touch electrical equipment or wires if they’re wet or submerged.
Call an electrician to inspect your electrical system before turning it on.

✅ Help Others & Stay Informed
Assist vulnerable neighbors, especially the elderly and disabled.
Stay updated on recovery efforts and government instructions.""",
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
