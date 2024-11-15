import 'package:flutter/material.dart';



class onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Light yellow background
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        elevation: 0, // No shadow
        actions: [
          // Skip button in top-right corner
          TextButton(
            onPressed: () {
              // Skip action - navigate to next screen
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Skip pressed'),
              ));
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
            // Search Restaurants Text
            Text(
              'Search',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Restaurants',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // Arrow icon
            Icon(
              Icons.chevron_right,
              size: 40,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
