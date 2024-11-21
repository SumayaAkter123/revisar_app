import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/user_signin.dart';


class signUp extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Background color for the screen
      appBar: AppBar(
        backgroundColor: Colors.yellow[600], // AppBar color
        title: Text('Sign up', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
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
              SizedBox(height: 10),

              // OTP Field
              TextFormField(
                controller: otpController,
                decoration: InputDecoration(
                  labelText: 'Write OTP',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      // Add OTP sending logic here
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter OTP';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Send OTP and Resend OTP Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Send OTP action
                      },
                      child: Text('Send OTP'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Resend OTP action
                      },
                      child: Text('Resend OTP'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Password Field
              TextFormField(
                controller: passwordController,
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Confirm Password Field
              TextFormField(
                controller: confirmPasswordController,
                obscureText: _isConfirmPasswordHidden,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_signin()),
                  );
                  if (_formKey.currentState!.validate()) {
                    // Handle the sign up logic
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Signing up...'),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text('Sign Up', style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 10),

              // Restaurant Owner Link
              Center(
                child: TextButton(
                  onPressed: () {
                    // Navigate to restaurant owner page
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Navigating to restaurant owner page...'),
                    ));
                  },
                  child: Text(
                    'Are you a restaurant owner? Then Click here',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
