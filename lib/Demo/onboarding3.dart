
import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/user_signin.dart';


class onboarding3 extends StatelessWidget {
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
            // Back button action
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Leave A Review Text
            Text(
              'Leave A Review',
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
                'Your Feedback can greatly impact the success of a restaurant',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            SizedBox(height: 40),

            // Get Started Button
            ElevatedButton(
              onPressed: () {

                // Handle Get Started action
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_signin()),
                );
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Getting Started with your review...'),
                ));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
