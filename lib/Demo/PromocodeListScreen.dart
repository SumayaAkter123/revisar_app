import 'package:flutter/material.dart';
/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promocodes',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: PromocodeListScreen(),
    );
  }
}*/

class PromocodeListScreen extends StatelessWidget {
  final List<Map<String, String>> promocodes = [
    {
      'title': 'Avail 10% off',
      'details': 'Minimum ratings= 30\nMinimum reviews= 30\n(one time use)',
    },
    {
      'title': 'Avail 20% off',
      'details': 'Minimum ratings= 60\nMinimum reviews= 60\n(one time use)',
    },
    {
      'title': 'Avail 50% off',
      'details': 'Minimum ratings= 100\nMinimum reviews= 100\n(one time use)',
    },
    {
      'title': 'Avail 5% off',
      'details': 'For new users only (one time use)',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F4D7), // Light background color
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC107), // Yellow color
        elevation: 0,
        title: Text('Promocodes', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: promocodes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Text(
                promocodes[index]['title']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                promocodes[index]['details']!,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 16),
              onTap: () {
                // Navigate to promocode details or apply promocode action
              },
            ),
          );
        },
      ),
    );
  }
}
