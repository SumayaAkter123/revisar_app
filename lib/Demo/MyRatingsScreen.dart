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
      home: MyRatingsScreen(),
    );
  }
}
*/
class MyRatingsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> ratings = [
    {'name': 'KFC', 'rating': 3},
    {'name': 'Gloria Jean\'s', 'rating': 4},
    {'name': 'Burger Express', 'rating': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Ratings',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Total ${ratings.length} ratings',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        color: Colors.yellow[50],
        child: ListView.builder(
          itemCount: ratings.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(ratings[index]['name']),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ratings[index]['rating'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.star, color: Colors.red, size: 16),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
