import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Rain extends StatelessWidget {
  const Rain({super.key});

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
                        Text("Heavy Rain Safety Guidelines 🌧️",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before Heavy Rain (Preparedness)

✅ Know Your Risk
Be aware of your area's flood-prone zones or regions with poor drainage.
Check weather forecasts regularly and sign up for flood or weather alerts.

✅ Create an Emergency Plan
Know evacuation routes to higher ground or safer locations.
Establish a family meeting point in case of evacuation.
Have a plan for pets and animals in case of flooding or evacuation.

✅ Prepare an Emergency Kit
Water, non-perishable food, medications, flashlight, batteries.
First-aid kit, important documents, and a whistle.
A battery-powered radio to stay informed.

✅ Inspect Your Home
Ensure gutters and drains are clear to avoid water blockage.

If in a flood-prone area, elevate important belongings and utilities.
Install sump pumps and check their functionality.
During Heavy Rain (Response)

If You Are Indoors
🔹 Stay Indoors and Avoid Unnecessary Travel
Stay inside, away from windows and doors.
Avoid using electrical appliances if you suspect flooding.
🔹 Monitor Weather Updates
Stay informed about weather alerts and warnings.
Listen to the radio or check online sources for emergency instructions.

If You Are Outdoors
🔹 Move to Higher Ground
Seek shelter immediately in a sturdy building, away from rivers, streams, or hillsides.
Avoid driving through flooded roads or fast-moving water.
🚫 Do NOT walk or drive through floodwaters—six inches of water can knock you over, and a foot of water can float a car.

If You Are in a Vehicle
🔹 Stop and Find Higher Ground
Pull over to the side of the road away from low-lying areas, streams, or rivers.
Do not attempt to drive through water-covered roads.


After Heavy Rain (Recovery & Safety Measures)

✅ Wait for Official Clearance
Stay indoors until authorities declare that it’s safe to go outside.
If flood warnings are in effect, stay off the roads until it's safe.

✅ Check for Hazards
Be cautious of fallen trees, damaged power lines, or structural damage to your home.
Avoid any areas that are prone to landslides or mudflows.

✅ Inspect Your Home
Look for signs of water damage or flooding in your home.
Use a flashlight, not candles, to avoid the risk of fire.

✅ Help Others & Report Damage
Assist neighbors, especially the elderly and disabled, in checking for damage.
Report any damage to utilities or blocked roads to local authorities.""",
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
