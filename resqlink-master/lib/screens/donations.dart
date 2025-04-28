import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:http/http.dart' as http;
import 'package:resqlink/screens/globals.dart' as globals;

class Donations extends StatelessWidget {
  const Donations({super.key});
  Future<void> sendDonation(String type, String details, {String? location}) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:8000/donate'), // your backend URL
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      "username": globals.username,
      "type": type,
      "details": details,
      "location": location,
      "timestamp": DateTime.now().toIso8601String(),
    }),
  );

  if (response.statusCode == 200) {
    print('Donation successful');
  } else {
    print('Failed to donate');
  }
}


  void _showPopup(BuildContext context, String title) {
    final TextEditingController _inputController = TextEditingController();
    final TextEditingController _secondInputController =
        TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        String label;
        String hint;

        if (title == 'Cash') {
          label = 'Enter the amount';
          hint = 'Amount in ₹';
        } else if (title == 'Materials') {
          label = 'Enter the material details';
          hint = 'e.g., Clothes, Blankets';
        } else if (title == 'Food') {
          label = 'Enter the food details';
          hint = 'e.g., Rice, Canned Food';
        } else {
          label = 'Enter details';
          hint = '';
        }

        return AlertDialog(
          title: Text('$title Donation'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label),
              const SizedBox(height: 10),
              TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: hint,
                ),
              ),
              if (title == 'Materials' || title == 'Food') ...[
                const SizedBox(height: 15),
                const Text('Location'),
                const SizedBox(height: 10),
                TextField(
                  controller: _secondInputController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the location',
                  ),
                ),
              ],
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final input = _inputController.text;
                final secondInput = _secondInputController.text;
                print("Donated $input for $title. Notes: $secondInput");
                sendDonation(title, _inputController.text, location: _secondInputController.text);
                Navigator.of(context).pop();
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DONATIONS",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF474A53),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: ExpandablePageView(
              children: [
                DonationPage(
                  color: const Color(0xFF474A53),
                  title: "Cash",
                  onDonatePressed: () => _showPopup(context, "Cash"),
                ),
                DonationPage(
                  color: const Color(0xFF474A53),
                  title: "Materials",
                  onDonatePressed: () => _showPopup(context, "Materials"),
                ),
                DonationPage(
                  color: const Color(0xFF474A53),
                  title: "Food",
                  onDonatePressed: () => _showPopup(context, "Food"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DonationPage extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onDonatePressed;

  const DonationPage({
    super.key,
    required this.color,
    required this.title,
    required this.onDonatePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onDonatePressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: color,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Donate",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}