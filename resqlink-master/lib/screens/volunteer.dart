import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:resqlink/screens/globals.dart' as globals;
import 'package:resqlink/screens/home.dart';
import 'dart:convert';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  bool isChecked = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  // Function to send data to backend
 Future<void> submitVolunteerData(String name, String phone, String location) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:8000/volunteer'),  // Note: make sure URL is correct
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'username': globals.username,    // <-- Ensure username is being passed correctly
      'full_name': name,               // <-- This is for full_name
      'phone': phone,
      'location': location,
    }),
  );

  if (response.statusCode == 200) {
    // Success
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Thank you!"),
          content: Text("You will be notified when you become a volunteer."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  } else {
    // Failure
    print("Failed to add volunteer: ${response.body}");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("There was an error. Please try again."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              "https://i.postimg.cc/Gh88zcGY/image.png",
              opacity: AlwaysStoppedAnimation(0.19),
              fit: BoxFit.cover,
            ),
          ),
          // Logo
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 118),
            child: SizedBox(
              height: 25,
              child: Image.network(
                "https://i.postimg.cc/XNrdc26d/ResQLink.png",
                color: Colors.black,
              ),
            ),
          ),
          // Heading
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 50),
            child: Text(
              "Become a Volunteer",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          // Form fields
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'FULL NAME',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: 'PHONE',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    child: TextField(
                      controller: locationController,
                      decoration: InputDecoration(
                        labelText: 'LOCATION',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Checkbox
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 50),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),
                const Text(
                  "I agree to Volunteer",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          // Submit button
          Positioned(
            bottom: 40,
            left: 50,
            right: 50,
            child: ElevatedButton(
              onPressed: () {
                if (isChecked) {
                  submitVolunteerData(
                    nameController.text,
                    phoneController.text,
                    locationController.text,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please agree to volunteer.")),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              child: Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
