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
          child: onboarding2(),
        ),
      ),
    );
  }
}*/

class onboarding2 extends StatelessWidget {
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
          bottom: 100,
          right: 40,
          child: YellowShape(),
        ),
        Positioned(
          bottom: 200,
          left: 60,
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
              Icons.balance, // Choose an appropriate icon
              size: 80,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              'Rate Them',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            // Description Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Take into account the overall dining experience, including the ambience and presentation of the dishes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
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
