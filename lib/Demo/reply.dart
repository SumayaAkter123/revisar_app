


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReplyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Total 3 reviews',
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text(
              'S',
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            'Sumaya Akter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('The burger here is my fav.'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 72.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                // Action for reply text
              },
              child: Text(
                'Thank you for choosing Khana\'s',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Reply...',
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.send, color: Colors.blue),
                onPressed: () {
                  // Action to send reply
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
