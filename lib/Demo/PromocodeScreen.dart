import 'package:flutter/material.dart';



class promocodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Light yellow background
      appBar: AppBar(
        backgroundColor: Colors.yellow[600], // Yellow app bar
        title: Text(
          'Promocodes',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Back button action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Profile Card
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile_placeholder.png'), // Placeholder, replace with actual image
                    ),
                    SizedBox(height: 20),

                    // User Information
                    Text(
                      'Tayeem Tushin',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '01799973437\n'
                          't.tushin360@gmail.com\n'
                          'User ID: 000013',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Promo Information
                    Text(
                      'You have availed 5% discount as a new user of this app.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Show this at the cash counter of any restaurant who accepts REVISAAR and enjoy this discount.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Available Discount
                    Text(
                      'Avail 5% off',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),

                    // Thank You Message
                    Text(
                      'Thank you for being with REVISAAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
