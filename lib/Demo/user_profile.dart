import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/MyFavouritesScreen.dart';
import 'package:revisar_app/Demo/MyRatingsScreen.dart';
import 'package:revisar_app/Demo/MyReviewScreen.dart';
import 'package:revisar_app/Demo/PromocodeScreen.dart';
import 'package:revisar_app/Demo/SplashScreen.dart';
import 'package:revisar_app/Demo/edit_userProfile.dart';


class user_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7D6),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCC00),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
            // Add navigation back functionality here
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFFFCC00),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual profile image URL
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tayeem Tushin',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '01799973437 | t.tushin360@gmail.com',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      Text(
                        'User ID: 000010',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => edit_userProfile()),
                    );
                    // Add edit profile functionality here
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('My Ratings'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyRatingsScreen()),
                    );// Navigate to My Ratings page
                  },
                ),
                ListTile(
                  title: Text('My Reviews'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyReviewsScreen()),
                    );
                    // Navigate to My Reviews page
                  },
                ),
                ListTile(
                  title: Text('My Favorites'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyFavouritesScreen()),
                    );
                    // Navigate to My Favorites page
                  },
                ),
                ListTile(
                  title: Text('Promocodes'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => promocodeScreen()),
                    );
                    // Navigate to Promocodes page
                  },
                ),
                ListTile(
                  title: Text('Sign Out'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen()),
                    );
                    // Add sign out functionality here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
