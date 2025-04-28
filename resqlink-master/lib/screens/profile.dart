import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:resqlink/screens/globals.dart' as globals;
import 'package:resqlink/screens/home.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<Map<String, dynamic>> fetchProfileAndDonations() async {
    final profileResponse = await http.get(
        Uri.parse('http://127.0.0.1:8000/volunteer/${globals.username}'));
    final donationResponse = await http.get(
        Uri.parse('http://127.0.0.1:8000/donations/${globals.username}'));

    if (profileResponse.statusCode == 200 && donationResponse.statusCode == 200) {
      final profileData = json.decode(profileResponse.body);
      final donationData = json.decode(donationResponse.body);

      return {
        'profile': {
          'full_name': profileData['full_name'] ?? 'YOUR NAME',
          'phone': profileData['phone'] ?? 'Add number',
          'location': profileData['location'] ?? 'USA',
        },
        'donations': donationData,  // List of donations
      };
    } else {
      throw Exception('Failed to load profile or donations');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF474A53),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
        ),
        title: const Text('Profile'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchProfileAndDonations(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final profileData = snapshot.data!['profile'];
            final List<dynamic> donations = snapshot.data!['donations'];

            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 50),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 111, 107, 94),
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipOval(
                            child: Image.network(
                              'https://i.postimg.cc/wTBNqZ8r/user.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 160),
                          child: Column(
                            children: [
                              Text(
                                profileData['full_name'],
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                globals.username,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 340,
                    child: Column(
                      children: [
                        buildProfileRow('Name', profileData['full_name']),
                        const Divider(),
                        buildProfileRow('Phone number', profileData['phone']),
                        const Divider(),
                        buildProfileRow('Location', profileData['location']),
                        const Divider(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Donations section
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'My Donations',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    children: donations.map((donation) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Type: ${donation['type']}",
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text("Details: ${donation['details']}"),
                              const SizedBox(height: 5),
                              Text("Location: ${donation['location'] ?? 'N/A'}"),
                              const SizedBox(height: 5),
                              Text(
                                  "Time: ${donation['timestamp'].toString().substring(0, 19)}"),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}

Widget buildProfileRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    ),
  );
}
