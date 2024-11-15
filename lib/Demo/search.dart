import 'package:flutter/material.dart';



class search extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<search> {
  TextEditingController searchController = TextEditingController();
  List<String> restaurants = [
    'KFC',
    'Khana\'s',
    'Burger King',
  ];
  List<String> filteredRestaurants = [];

  @override
  void initState() {
    super.initState();
    filteredRestaurants = restaurants;
  }

  void filterSearchResults(String query) {
    if (query.isNotEmpty) {
      setState(() {
        filteredRestaurants = restaurants
            .where((restaurant) => restaurant.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    } else {
      setState(() {
        filteredRestaurants = restaurants;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600], // Yellow color for app bar
        title: Text('Search', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              controller: searchController,
              onChanged: filterSearchResults,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // List of filtered restaurants
            Expanded(
              child: ListView.builder(
                itemCount: filteredRestaurants.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredRestaurants[index]),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Handle tap, for example, navigate to a restaurant details page
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Navigating to ${filteredRestaurants[index]} details'),
                      ));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
