import 'package:flutter/material.dart';


class PromocodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back button
          },
        ),
        title: Text('Promocodes'),
        backgroundColor: Colors.yellow, // Match the yellow color from the image
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Promocode 1
            PromoCard(
              discount: '10%',
              minRatings: 30,
              minReviews: 30,
              oneTimeUse: true,
              onTap: () {
                // Navigate to details for this promocode
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Navigating to promocode 10% details'),
                ));
              },
            ),
            SizedBox(height: 10),
            // Promocode 2
            PromoCard(
              discount: '20%',
              minRatings: 60,
              minReviews: 60,
              oneTimeUse: true,
              onTap: () {
                // Navigate to details for this promocode
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Navigating to promocode 20% details'),
                ));
              },
            ),
            SizedBox(height: 10),
            // Promocode 3
            PromoCard(
              discount: '50%',
              minRatings: 100,
              minReviews: 100,
              oneTimeUse: true,
              onTap: () {
                // Navigate to details for this promocode
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Navigating to promocode 50% details'),
                ));
              },
            ),
            SizedBox(height: 10),
            // Promocode 4
            PromoCard(
              discount: '5%',
              minRatings: 0,
              minReviews: 0,
              oneTimeUse: true,
              onTap: () {
                // Navigate to details for this promocode
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Navigating to promocode 5% details'),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final String discount;
  final int minRatings;
  final int minReviews;
  final bool oneTimeUse;
  final VoidCallback onTap;

  PromoCard({
    required this.discount,
    required this.minRatings,
    required this.minReviews,
    required this.oneTimeUse,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          'Avail $discount off',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Minimum ratings = $minRatings'),
            Text('Minimum reviews = $minReviews'),
            Text(oneTimeUse ? '(One time use)' : '(No restrictions)'),
          ],
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.black,
        ),
        onTap: onTap,
      ),
    );
  }
}
