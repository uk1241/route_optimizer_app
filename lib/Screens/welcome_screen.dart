import 'package:flutter/material.dart';
import 'package:route_optimizer_app/Screens/login_screen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      backgroundColor: const Color(0xFFE0E0E0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// App Name
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                    text: "Routico",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight:
                          FontWeight.bold, // or whatever weight you want
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),

              /// image
              Image.asset('assets/onboarding.png', height: 400),

              ///ArrowButton
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.purple[200],
                  padding: const EdgeInsets.all(25),
                  elevation: 10,
                ),
                child: const Icon(Icons.arrow_forward, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 24.0),
                    children: [
                      TextSpan(
                        text: 'Routico ',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Go Further,Smarter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
