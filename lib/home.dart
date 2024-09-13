import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cas/onboarding.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Card Layout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Static Cards (3 beside each other)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.blueAccent,
                    child: Container(
                      height: 100,
                      child: Center(child: Text('Card 1')),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Card(
                    color: Colors.greenAccent,
                    child: Container(
                      height: 100,
                      child: Center(child: Text('Card 2')),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Card(
                    color: Colors.orangeAccent,
                    child: Container(
                      height: 100,
                      child: Center(child: Text('Card 3')),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Swipeable Cards (Horizontal Scroll)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    color: Colors.redAccent,
                    child: Container(
                      width: 120,
                      height: 100,
                      child: Center(child: Text('Swipe Card 1')),
                    ),
                  ),
                  Card(
                    color: Colors.purpleAccent,
                    child: Container(
                      width: 120,
                      height: 100,
                      child: Center(child: Text('Swipe Card 2')),
                    ),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    child: Container(
                      width: 120,
                      height: 100,
                      child: Center(child: Text('Swipe Card 3')),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Container(
                      width: 120,
                      height: 100,
                      child: Center(child: Text('Swipe Card 4')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
