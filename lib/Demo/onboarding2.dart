
import 'package:flutter/material.dart';

import 'package:revisar_app/Demo/onboarding3.dart';
import 'package:revisar_app/Demo/user_signin.dart';

class onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Light yellow background
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        elevation: 0, // No shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Go back to the previous onboarding screen
            Navigator.pop(context);
          },
        ),
        actions: [
          // Skip button in top-right corner
          TextButton(
            onPressed: () {
              // Skip action - navigate to SignIn page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => user_signin()),
              );
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Rate Them Text
            Text(
              'Rate Them',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // Description Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Take into account the overall dining experience, including the ambience and presentation of the dishes.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            SizedBox(height: 40),

            // Arrow icon to go to the SignIn page
            IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigate to the SignIn page when the arrow is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => onboarding3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
