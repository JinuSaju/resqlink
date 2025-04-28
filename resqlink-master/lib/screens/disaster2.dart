import 'package:flutter/material.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/volunteer.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: 'Be a Volunteer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Donate',
          ),
        ],
      ),*/
        body: Stack(
      children: [
        Container(
          width: 375,
          height: 667,
          decoration: BoxDecoration(
            color: Color.fromARGB(171, 71, 74, 83),
          ),
          child: Image.network(
            "https://i.postimg.cc/LXV40ymd/image.png",
            fit: BoxFit.cover, // <-- Fills the container fully
            opacity: AlwaysStoppedAnimation(0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 30),
          child: Container(
            width: 330,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // <-- Rounded corners
              child: Image.network(
                "https://i.postimg.cc/LXV40ymd/image.png",
                fit: BoxFit.cover, // <-- Fills the container fully
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Text(
            """
        On April 13, 2025, Lanzarote, Canary Islands, 
        experienced severe flooding due to a 
        two-hour rainstorm that dropped over 100 liters 
        of rain per square meter. The storm overwhelmed 
        local infrastructure, causing widespread damage 
        in areas like Costa Teguise, San Bartolomé, and 
        Arrecife. Roads turned into rivers, vehicles were
        swept away, and homes and hotels were inundated. 
        Emergency services responded to over 220 
        incidents,and the island was declared a 
        disaster zone. The UK government issued 
        a travel warning, urging travelers to 
        monitor local updates and follow authority 
        instructions""",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 570, left: 7),
              child: Container(
                  width: 360,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF474A53),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2, left: 2),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Volunteer()));
                      },
                      icon: Icon(
                        Icons.group_add,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: Text(
                        "Be a Volunteer",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 7),
              child: Container(
                  width: 360,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF474A53),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2, left: 0),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Donations()));
                      },
                      icon: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: Text(
                        "Donate",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        )
      ],
    ));
  }
}
