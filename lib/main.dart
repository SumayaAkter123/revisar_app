import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/homepage.dart';

import 'Demo/reply.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: homepage(),
    );
  }
}

class reply extends StatefulWidget {
  const reply({super.key});

  @override
  State<reply> createState() => _replyState();
}

class _replyState {
}

class _MyAppState extends State<reply> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text(
            'Replies ',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Add back navigation here
            },
          ),
        ),
        body: ReplyScreen(),
      ),
    );
  }
}