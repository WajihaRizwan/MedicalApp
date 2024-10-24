
import 'package:flutter/material.dart';
import 'login.dart'; // Import the LoginScreen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(), 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _navigateToLogin(); 
        },
        child: Container(
          height: 915,
          width: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "splash.png"), // Background image for the splash screen
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
