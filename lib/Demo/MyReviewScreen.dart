import 'package:flutter/material.dart';


class MyReviewsScreen extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      'title': 'KFC',
      'review': 'I really enjoy their chicken fry and Zinger Burger',
    },
    {
      'title': 'Gloria Jean\'s',
      'review': 'Their Alfredo pasta is my fav and I really like their attitude',
    },
    {
      'title': 'Khana\'s',
      'review': 'I truly don\'t like their burger sauce, it tastes sweet to me. But the restaurant is clean.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F4D7), // Light background color
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC107), // Yellow color
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Reviews', style: TextStyle(color: Colors.black)),
            Text(
              'Total ${reviews.length} reviews',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Text(
                reviews[index]['title']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                reviews[index]['review']!,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          );
        },
      ),
    );
  }
}
