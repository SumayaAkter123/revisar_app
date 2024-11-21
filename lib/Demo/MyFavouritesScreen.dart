import 'package:flutter/material.dart';

class MyFavouritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: Text(
          "MyFavourites",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      backgroundColor: Color(0xFFF9F6E8), // Light yellow background
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          ListTile(
            title: Text(
              "Khana's",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.black),
            onTap: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KhanasPage()),
              );*/
            },
          ),
          Divider(color: Colors.grey.shade300),
          ListTile(
            title: Text(
              "KFC",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.black),
            onTap: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KFCPage()),
              );*/
            },
          ),
          Divider(color: Colors.grey.shade300),
          ListTile(
            title: Text(
              "Gloria Jean's",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.black),
            onTap: () {
             /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GloriaJeansPage()),
              );*/
            },
          ),
          Divider(color: Colors.grey.shade300),
          ListTile(
            title: Text(
              "Burger Express",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.black),
            onTap: () {
             /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BurgerExpressPage()),
              );*/
            },
          ),
        ],
      ),
    );
  }
}
