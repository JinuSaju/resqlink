import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Landslide extends StatelessWidget {
  const Landslide({super.key});

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
                        Text("Landslide Safety Guidelines 🌄",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before a Landslide (Preparedness)

✅ Know Your Risk
Identify if you live in a landslide-prone area (steep hillsides, near rivers or streams, or where previous landslides have occurred).
Look for warning signs like cracked walls, leaning trees, or water seeping from hillsides.

✅ Create an Emergency Plan
Know the evacuation routes to reach higher, safer ground.
Make sure all family members understand where to go during a landslide.
Designate a meeting point in case you get separated.

✅ Prepare an Emergency Kit
Water, non-perishable food, medications, flashlight, batteries.
First-aid supplies, documents, and a whistle.
A battery-powered radio to listen for emergency updates.

✅ Improve Your Home’s Safety
Ensure proper drainage to prevent water buildup on slopes.
I
f you live on a hillside, consider reinforcing the slope or adding retaining walls.
Install flexible utility lines to reduce the chance of breakage during a landslide.
During a Landslide (Response)

If You Are in a Landslide-Prone Area
🚨 Listen to Alerts & Evacuate
Pay attention to weather forecasts and landslide warnings.

If you are instructed to evacuate, do so immediately.

If You Are Indoors
🔹 Move to a Safe Place
Get away from windows, exterior walls, and doors.
Move to a higher floor or the center of the building, away from slopes.

If You Are Outdoors
🔹 Move to Higher Ground
Quickly move away from hillsides, cliffs, or slopes.
Avoid rivers and streams that may become swollen with debris.
🚫 DO NOT attempt to cross or drive through flooded roads—landslides can create fast-moving, dangerous debris flows.

If You Are in a Vehicle
🔹 Stop in a Safe Location
Pull over to the side of the road, away from hillsides or slopes.
Stay inside your vehicle until the landslide danger has passed.


After a Landslide (Recovery & Safety Measures)

✅ Wait for Authorities to Declare the Area Safe
Avoid returning to an area affected by a landslide until officials clear it.

✅ Check for Hazards
Be cautious of loose debris, mud, or damaged buildings.
Stay away from downed power lines and utility lines.

✅ Look for Injuries & Administer First Aid
Provide medical help for any injuries.
Call emergency services if necessary.

✅ Avoid Flooded Areas
Mudslides can be caused by rain, so be aware of the potential for further damage from heavy rainfall.

✅ Help Others & Report Damage
Check on neighbors, especially vulnerable individuals (elderly, children, disabled).
Report blocked roads or landslide damage to authorities.""",
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
