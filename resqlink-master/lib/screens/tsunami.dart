import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Tsunami extends StatelessWidget {
  const Tsunami({super.key});

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
                        Text("Tsunami Safety Guidelines 🌊",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before a Tsunami (Preparedness)

✅ Know Your Risk
Check if you live in a tsunami-prone coastal area.
Learn evacuation routes and nearest high ground locations.

✅ Create an Emergency Plan
Practice evacuation drills with your family.
Identify safe places at least 30 meters (100 feet) above sea level or 2 km (1.2 miles) inland.

✅ Prepare an Emergency Kit
Water, food, flashlight, batteries, whistle, first aid kit.
Important documents (ID, insurance, emergency contacts).

✅ Stay Informed
Follow weather updates and tsunami warnings on TV, radio, or mobile apps.
Sign up for local disaster alerts.


During a Tsunami (Response)

If a Tsunami Warning is Issued
🔹 Move to Higher Ground Immediately!

Do not wait for official warnings if you feel a strong earthquake.

Evacuate inland or to high ground without delay.
🔹 Natural Warning Signs of a Tsunami:

Strong earthquake (lasting over 20 seconds near the coast).
Sudden ocean recession (water pulls away from the shore unusually far).

Loud roaring sound coming from the ocean.
🚨 If you notice these signs, evacuate immediately! 🚨
📌 Do NOT go near the shore to watch the waves!

After a Tsunami (Recovery & Safety Measures)

✅ Wait for Official Clearance
Tsunami waves may come in multiple surges—do not return too soon.
Follow emergency authority updates before going back to coastal areas.

✅ Avoid Flooded Areas
Do not walk or drive through floodwaters (they may contain debris or be electrically charged).

✅ Check for Injuries & Help Others
Administer first aid if necessary.
Assist children, elderly, and disabled individuals.

✅ Stay Alert for Aftershocks
Another tsunami could follow due to seismic activity.

✅ Report Damage & Seek Shelter if Needed
Check for damaged utilities (gas leaks, electrical hazards).
U
se emergency shelters if your home is unsafe.""",
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
