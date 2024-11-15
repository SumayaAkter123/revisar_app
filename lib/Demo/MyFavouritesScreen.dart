import 'package:flutter/material.dart';



class MyFavouritesScreen extends StatelessWidget {
  final List<String> favourites = [
    'Khana\'s',
    'KFC',
    'Gloria Jean\'s',
    'Burger Express',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text(
          'My Favourites',
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        color: Colors.yellow[50],
        child: ListView.builder(
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(favourites[index]),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
            );
          },
        ),
      ),
    );
  }
}
