import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  edit_userProfile createState() => edit_userProfile();
}

class edit_userProfile extends State<EditProfileScreen> {
  final TextEditingController nameController = TextEditingController(text: 'Tayeem Tushin');
  final TextEditingController phoneController = TextEditingController(text: '01799973437');
  final TextEditingController emailController = TextEditingController(text: 't.tushin360@gmail.com');
  final TextEditingController addressController = TextEditingController(text: 'Wari, Dhaka');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F4D7), // Light background color
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC107), // Yellow color
        elevation: 0,
        title: Text('Edit Profile', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                icon: Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  // Handle profile image edit
                },
              ),
            ),
            SizedBox(height: 32),
            buildTextField('Name', nameController, readOnly: false),
            SizedBox(height: 16),
            buildTextField('Mobile Number', phoneController, readOnly: false),
            SizedBox(height: 16),
            buildTextField('Email', emailController, readOnly: false),
            SizedBox(height: 16),
            buildTextField('Address', addressController, readOnly: false),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle save action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFC107), // Yellow color
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Save Changes',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller, {bool readOnly = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: controller,
          readOnly: readOnly,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 8),
          ),
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ],
    );
  }
}
