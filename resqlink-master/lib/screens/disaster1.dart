import 'package:flutter/material.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/volunteer.dart';

class One extends StatelessWidget {
  const One({super.key});

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
            "https://i.postimg.cc/3wsDHbMd/Florida-Hurricane.webp",
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
                "https://i.postimg.cc/3wsDHbMd/Florida-Hurricane.webp",
                fit: BoxFit.cover, // <-- Fills the container fully
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Text(
            """
        In March 2025, multiple powerful earthquakes 
        struck different parts of the world, causing 
        widespread destruction and loss of life.
        The most catastrophic event was a 7.7–7.9 
        magnitude earthquake in Myanmar on March 28, 
        centered near Mandalay, which resulted in over 
        5,400 deaths, 11,400 injuries, and the displacement
        of millions. Entire villages, pagodas, schools, 
        and critical infrastructure were destroyed.
        Additionally, a 6.5 magnitude earthquake hit 
        Turkey on March 20, causing deaths and serious 
        structural damages.""",
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
