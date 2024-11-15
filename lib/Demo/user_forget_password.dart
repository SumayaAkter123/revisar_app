import 'package:flutter/material.dart';



class user_forget_password extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<user_forget_password> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
            Navigator.pop(context);
          },
        ),
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Mobile Number
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

              // Email
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
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
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the OTP';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Send OTP Button
              ElevatedButton(
                onPressed: () {
                  // Send OTP logic
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('OTP sent to your email/mobile'),
                  ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text('Send OTP'),
              ),
              SizedBox(height: 10),

              // Resend OTP Button (not in the email text)
              ElevatedButton(
                onPressed: () {
                  // Resend OTP logic
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('OTP resent'),
                  ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text('Resend OTP'),
              ),
              SizedBox(height: 20),

              // Confirm Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle confirmation logic, e.g., password reset
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('OTP verified, proceed to reset password'),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text('Confirm'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
