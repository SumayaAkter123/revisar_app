import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/user_profile.dart';
import 'package:revisar_app/Demo/home_page.dart';

class SignInDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F6E8), // Light yellow background color
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Green Checkmark
                Image.asset(
                  'assets/images/green_checkmark.png', // Replace with your image path
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                // Text: Sign In Done
                Text(
                  "Sign In Done",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                // Buttons: View Profile and Go To Home
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the profile screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user_profile()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Button background color
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "View Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the home screen and replace the current screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Button background color
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Go To Home",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
        );
    }
}