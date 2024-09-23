import 'package:cas/chat.dart';
import 'package:flutter/material.dart';
import 'package:cas/home.dart';
class PracticePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_double_arrow_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Practice',
        style:TextStyle(fontWeight:FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Let's hone your social skills together \nwith interactive practice sessions!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.blue[700]),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Select your options to create a \nscenario for your social practice.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.blue[700]),
                ),
              ),
             const  SizedBox(height: 30),
              const Center(
                child: Text(
                  'Situation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 400, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () {
                      //Go to chat page with 
                      //meeting with friend scenario
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChatPage(msgContext: "Meeting with a friend",)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 100, 245, 141),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const  Text(
                      "Meeting with a friend",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 400, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChatPage(msgContext: "Attending a club meeting",)));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 132, 210, 246),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      "Attending a Club Meeting",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 400, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChatPage(msgContext: "Job interview",)));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 196, 203),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      "Job Interview",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 400, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChatPage(msgContext: "Making an order",)));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 100, 245, 141),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      "Making an Order",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(width: 20),
              Center(
                child: Text(
                  'View more',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[700],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue[700]),
                ),
              ),
              const SizedBox(height: 20),
  
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
                // IconButton(
                //   icon: Icon(Icons.search),
                //   onPressed: () {
                //     // Handle search button press
                //   },
                // ),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatPage()));

                    // Handle bookmark button press
                  },
                ),
                // IconButton(
                //   icon: Icon(Icons.person_outline),
                //   onPressed: () {
                //     // Handle profile button press
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

