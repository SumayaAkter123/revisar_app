import 'package:flutter/material.dart';


class edit_userProfile extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<edit_userProfile> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController(text: 'Enter  your Name');
  TextEditingController mobileController = TextEditingController(text: 'Enter your Password');
  TextEditingController emailController = TextEditingController(text: 'Enter your email');
  TextEditingController addressController = TextEditingController(text: 'Enter your address');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600], // Yellow color for the app bar
        title: Text('Edit Profile', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Back button action
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Profile Picture
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_placeholder.png'), // Placeholder image, replace with actual
                  child: IconButton(
                    icon: Icon(Icons.edit, color: Colors.white),
                    onPressed: () {

                      // Edit profile picture action
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Name Field
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Mobile Number Field
              TextFormField(
                controller: mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty || value.length < 10) {
                    return 'Please enter a valid mobile number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Email Field
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Address Field
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Save Changes Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle save logic
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Profile updated successfully'),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
                child: Text('Save Changes', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
