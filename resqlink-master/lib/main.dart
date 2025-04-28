// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:resqlink/screens/disaster1.dart';
import 'package:resqlink/screens/disaster2.dart';
import 'package:resqlink/screens/disaster3.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/earthquake.dart';
import 'package:resqlink/screens/fire.dart';
import 'package:resqlink/screens/flood.dart';
import 'package:resqlink/screens/home.dart';
import 'package:resqlink/screens/landslide.dart';
import 'package:resqlink/screens/login.dart';
import 'package:resqlink/screens/profile.dart';
import 'package:resqlink/screens/rain.dart';
import 'package:resqlink/screens/rescue.dart';

import 'package:resqlink/screens/signup.dart';
import 'package:resqlink/screens/tsunami.dart';
import 'package:resqlink/screens/volunteer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1B1919)),
          useMaterial3: false,
        ),
        home: Login());
  }
}
