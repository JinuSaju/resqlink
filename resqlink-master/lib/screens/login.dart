import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:resqlink/screens/globals.dart' as globals;
import 'package:resqlink/screens/home.dart';
import 'package:resqlink/screens/signup.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
Future<void> login(BuildContext context,String usernameInput, String password) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:8000/login'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'username': usernameInput,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    if (data["message"] == 'Login successful') {
      globals.username = usernameController.text;  // <-- Store globally 🔥

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Something went wrong. Please try again.')),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            width: 375,
            decoration: BoxDecoration(
              color: Color(0xFF474A53),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 80),
            child: Container(
              height: 40,
              child: Image.network(
                "https://i.postimg.cc/XNrdc26d/ResQLink.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Container(
              height: 550,
              width: 375,
              decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 25),
            child: Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                color: Color(0xFF1B1919),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 25),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(169, 71, 74, 83), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                ),
                minimumSize: Size(180, 58), // Set width and height
              ),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ), // Text color
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 138, left: 230),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 38),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "EMAIL",
                  hintStyle: TextStyle(color: Color.fromARGB(178, 255, 255, 255)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 38),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  hintStyle: TextStyle(color: Color.fromARGB(178, 255, 255, 255)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 112),
            child: ElevatedButton(
              onPressed: () {
                login(context, usernameController.text, passwordController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1B1919), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                ),
                minimumSize: Size(150, 48), // Set width and height
              ),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}