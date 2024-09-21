import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cas/onboarding.dart';
import 'package:cas/practice.dart';
import 'package:cas/cultural.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/bot_icon.gif', // Replace with your image path
              height: 40, // Adjust the height as needed
            ),
            Text(
              'CAS',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add some space between the text and the image
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Username',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome to your safe space.',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "What's your mood today?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 300, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Check In",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Are you up for an activity?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => DetailPage()),
                        // );
                      },
                      child: Card(
                        child: Container(
                          //width:100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/home4.png',
                                height: 90,
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PracticePage()),
                        );
                      },
                      child: Card(
                        child: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/home5.png',
                                height: 90,
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CulturalToolkitPage()),
                        );
                      },
                      child: Card(
                        child: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/home6.png',
                                height: 90,
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        
              SizedBox(
                  height: 8), // Add some space between the cards and the titles
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text('Manage Stress',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Center(
                      child: Text('Start Practising',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Center(
                      child: Text('Cultural Toolkit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Personalized Picks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Recommendations based on your recent moods',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
        
                    Column(
                      children: [
                        Card(
                          color: Colors.green[200],
                          child: Container(
                            width: 120,
                            height: 100,
                            //child: Center(child: Text('Swipe Card 1')),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/home1.png',
                                    height: 90,
                                  ),
                                ],
                          ),
                        ),
                        ),
                        Text('Turn procastination \ninto action',
                        style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.pink[50],
                          child: Container(
                            width: 120,
                            height: 100,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/home2.png',
                                    height: 90,
                                  ),
                                ],
                          ),
                          ),
                        ),
                        Text('Finding your calm in \nchaos',
                        style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.lightBlue[100],
                          child: Container(
                            width: 120,
                            height: 100,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/home3.png',
                                    height: 90,
                                  ),
                                ],
                          ),
                          ),
                        ),
                        Text('Booster',
                        style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.deepOrange[100],
                          child: Container(
                            width: 120,
                            height: 100,
                            child: Center(child: Text('Swipe Card 4')),
                          //   child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         Image.asset(
                          //           'assets/home1.png',
                          //           height: 90,
                          //         ),
                          //       ],
                          // ),
                          ),
                        ),
                        Text('Turn procastination \ninto action',
                        style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomAppBar(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200.0,
            width: 200.0, // Adjust the width to make the nav bar smaller
            margin: EdgeInsets.all(10.0), // Add margin to ensure the oval shape is visible
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0), // Apply the same radius to all corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {
                    // Handle home button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Handle search button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {
                    // Handle bookmark button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person_outline),
                  onPressed: () {
                    // Handle profile button press
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}