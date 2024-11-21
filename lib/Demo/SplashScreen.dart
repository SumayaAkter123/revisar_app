import 'package:flutter/material.dart';

import 'onboarding1.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add a delay of 1 second before navigating to Onboarding1 screen
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onboarding1()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.yellow[700], // Yellow background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Revisar',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Icon(
              Icons.restaurant_menu, // You can use this icon or any other to simulate a logo
              size: 48,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
