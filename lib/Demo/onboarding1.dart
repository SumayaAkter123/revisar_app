import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/onboarding3.dart';

class onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Light yellow background
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        elevation: 0, // No shadow
        actions: [
          // Skip button in the top-right corner
          TextButton(
            onPressed: () {
              // Navigate to the SignIn page when skip is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserSignIn()),
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

            // Arrow icon to go to the next onboarding screen
            IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigate to Onboarding2 screen when the arrow is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboarding2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Onboarding2 extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => UserSignIn()),
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

class UserSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7D6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: 't.tushin360@gmail.com',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.red),
                  suffixIcon: Icon(Icons.visibility_off, color: Colors.red),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Add forgot password functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add sign-in functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Add sign-up navigation here
                },
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, color: Colors.blue),
                  SizedBox(width: 4),
                  Text(
                    'Are you a restaurant owner?',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add restaurant owner navigation here
                    },
                    child: Text(
                      'Click here',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
