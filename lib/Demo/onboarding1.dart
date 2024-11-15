import 'package:flutter/material.dart';
/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF9E7), // Light yellow background color
        body: Center(
          child: onboarding1(),
        ),
      ),
    );
  }
}*/

class onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background shapes
        Positioned(
          top: 50,
          left: 30,
          child: YellowShape(),
        ),
        Positioned(
          top: 200,
          right: 40,
          child: YellowShape(),
        ),
        Positioned(
          bottom: 100,
          left: 50,
          child: YellowShape(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            // Skip button at the top right
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    // Add your skip functionality here
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            // Icon and Text
            Icon(
              Icons.fastfood,
              size: 80,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              'Search Restaurants',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Arrow Button
            Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.black,
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

// Yellow shape widget
class YellowShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFFFFE28A), // Light yellow color for shape
        shape: BoxShape.circle,
      ),
    );
  }
}
