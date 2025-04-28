import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Earthquake extends StatelessWidget {
  const Earthquake({super.key});

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
                        Text("Earthquake Safety Guidelines",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          """

Before an Earthquake (Preparedness)

✅ Create an Emergency Plan
Identify safe places in each room (under sturdy furniture, against an interior wall).
Practice "Drop, Cover, and Hold On" drills with family or colleagues.

✅ Prepare an Emergency Kit
First-aid supplies, bottled water, non-perishable food.
Flashlight, extra batteries, whistle, essential medicines.
Important documents (ID, insurance, emergency contacts).

✅ Secure Your Home & Workplace
Anchor heavy furniture (shelves, cabinets) to walls.
Avoid placing heavy objects on high shelves.
Fix gas cylinders and electrical appliances securely.


During an Earthquake (Response)
If You Are Indoors
🔹 Drop, Cover, and Hold On
Drop to the ground to prevent falling.
Cover your head and neck with your arms.

Hold On to sturdy furniture (table, desk) until the shaking stops.
🚫 DO NOT run outside during shaking—it’s dangerous.
📌 If in bed, stay there and cover your head with a pillow.📌 If in a wheelchair, lock the wheels and protect your head and neck.📌 If in a high-rise building, stay inside and move away from windows.

If You Are Outdoors
✅ Move to an open space away from buildings, trees, streetlights, and power lines.
✅ Drop to the ground and cover your head until the shaking stops.

If You Are in a Moving Vehicle
✅ Pull over safely and stay inside the vehicle.
✅ Avoid stopping under bridges, overpasses, or near buildings.

After an Earthquake (Recovery & Safety Measures)

✅ Check for Injuries
Provide first aid to those in need.
Call emergency services if necessary.

✅ Check for Hazards
Turn off gas, electricity, and water if you suspect damage.
Beware of aftershocks—stay alert.

✅ Evacuate If Necessary
If in a tsunami-prone area, move to higher ground immediately.
Avoid using elevators.

✅ Stay Informed
Listen to emergency broadcasts for updates.
Avoid using phones unless for emergencies.

✅ Help Others
Check on neighbors, especially elderly or disabled individuals.""",
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
