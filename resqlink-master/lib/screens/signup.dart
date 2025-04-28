import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:resqlink/screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> registerUser() async {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/register'),  // your FastAPI endpoint
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "username": username,
        "password": password,
      }),
    );

    final responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      if (responseData['message'] == 'User registered successfully') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registered Successfully')),
        );
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else if (responseData['message'] == 'User already exists') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User already exists')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Unexpected response: ${responseData['message']}')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${response.statusCode}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // (Your background designs - no change needed)
          Container(
            height: 150,
            width: 375,
            decoration: BoxDecoration(
              color: Color(0xFF474A53),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 80),
            child: Container(
              height: 40,
              child: Image.network("https://i.postimg.cc/XNrdc26d/ResQLink.png"),
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
                      topRight: Radius.circular(70))),
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
            padding: const EdgeInsets.only(top: 130, left: 183),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(169, 71, 74, 83),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(180, 58),
              ),
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 139, left: 75),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 38),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: "USERNAME",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(178, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 38),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "PASSWORD",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(178, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 112),
            child: ElevatedButton(
              onPressed: registerUser,  // <-- Call the function here
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1B1919),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(150, 48),
              ),
              child: Text(
                "REGISTER",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
