import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:route_optimizer_app/Screens/welcome_screen.dart';
import 'package:route_optimizer_app/Screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load shared preferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Check if welcome screen was already seen
  bool seenWelcome = prefs.getBool('seen_welcome') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: seenWelcome ? LoginScreen() : const WelcomeScreen(),
    ),
  );
}
