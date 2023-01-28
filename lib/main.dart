import 'package:flutter/material.dart';
import 'package:your_tickets/screens/bottom_navbar.dart';
import 'package:your_tickets/utils/app_styles.dart';

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
        primaryColor: primary,
      ),
      home: const BottomNavbar()
    );
  }
}

