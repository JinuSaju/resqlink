import 'package:flutter/material.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/volunteer.dart';

class Three extends StatelessWidget {
  const Three({super.key});

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
            "https://i.postimg.cc/mkD4pBdM/image.png",
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
                "https://i.postimg.cc/mkD4pBdM/image.png",
                fit: BoxFit.cover, // <-- Fills the container fully
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Text(
            """
        ​On April 24, 2025, heavy rainfall triggered massive 
        landslides in North Sikkim, particularly at 
        Munshithang on the Lachen–Chungthang road 
        and at Lema/Bob on the Lachung–Chungthang road, 
        severely disrupting travel and isolating 
        popular hill stations.​Approximately 1,000 tourists 
        were stranded in Lachen and Lachung due to blocked 
        roads, while around 200 vehicles with tourists were 
        stuck in Chungthang. Rescue operations were launched, 
        evacuating over 1,100 tourists from Chungthang via a 
        reconstructed Bailey bridge at Sangkalang. Efforts to 
        clear debris and restore connectivity are ongoing, with 
        authorities advising against nighttime travel due to 
        continued heavy rainfall. """,
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
