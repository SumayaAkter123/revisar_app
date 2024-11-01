import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemYellow,
      navigationBar: CupertinoNavigationBar(
        middle: Text(''),
        backgroundColor: CupertinoColors.systemYellow,
        border: null, // Removes the bottom border for a cleaner look
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              'Revisar',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 40,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Get Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
