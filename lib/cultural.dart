import 'package:cas/chat.dart';
import 'package:cas/chatProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';


class CulturalToolkitPage extends StatefulWidget{

  const CulturalToolkitPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CulturalToolkitPage();
  }
}
class _CulturalToolkitPage extends State<CulturalToolkitPage> {
  String? _selectedCountry;
  final countries = ["Anguilla",
"Antigua and Barbuda",
"Aruba",
"The Bahamas",
"Barbados",
"The British Virgin Islands",
"Cayman Islands",
"Cuba",
"Dominica",
"Dominican Republic",
"Grenada"
"Guadeloupe",
"Haiti",
"Jamaica",
"Martinique",
"Netherlands Antilles",
"Puerto Rico",
"St Barts",
"St Kitts and Nevis",
"St Lucia",
"St Martin",
"St Vincent"
"Trinidad and Tobago",
"Turks and Caicos"]; 
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_double_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: 
          const Text(
            'Cultural Toolkit',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Select your options to create a \n scenario for your social practice.',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              const Text(
                'Which country are you \ntraveling to?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              // TextField(
              //   suffix: 
              Container(
                width: double.infinity,
                decoration:  BoxDecoration(
                  border: Border.all(width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: DropdownButton<String>(
                    
                    value: _selectedCountry,
                    hint: Text('Select'),
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedCountry = newValue;
                      });
                    },
                    items: countries.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
              ),
              //   decoration: InputDecoration(
              //     prefixIcon: Icon(Icons.search),
              //     hintText: 'Search for country...',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(50.0)),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 40),
            
                    const Center(
                child: Text(
                  'What do you want to learn?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if(_selectedCountry==null){
                            toastification.show(
                              title: const Text('No country selected'),
                              autoCloseDuration: const Duration(milliseconds: 1500)
                            );
                        } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(msgContext: "Greetings",type:"culture",country: _selectedCountry==null? "" : _selectedCountry.toString(),)));

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 132, 210, 246),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child:const  Text(
                        'Greetings',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                         if(_selectedCountry==null){
                            toastification.show(
                              title: const Text('No country selected'),
                              autoCloseDuration: const Duration(milliseconds: 1500)
                            );
                        } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage(msgContext: "Food", type:"culture",country: _selectedCountry==null? "" : _selectedCountry.toString())));

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 132, 210, 246),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Food',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                         if(_selectedCountry==null){
                            toastification.show(
                              title: const Text('No country selected'),
                              autoCloseDuration: const Duration(milliseconds: 1500)
                            );
                        } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage(msgContext: "Slangs", type:"culture",country: _selectedCountry==null? "" : _selectedCountry.toString())));

                        }
                        

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 132, 210, 246),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Slangs',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                         if(_selectedCountry==null){
                            toastification.show(
                              title: const Text('No country selected'),
                              autoCloseDuration: const Duration(milliseconds: 1500)
                            );
                        } else {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(msgContext: "Clothes", type:"culture",country: _selectedCountry==null? "" : _selectedCountry.toString())));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 132, 210, 246),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Clothes',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              // Center(
              //   child: Text(
              //     'View more',
              //     style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.blue[700],
              //         decoration: TextDecoration.underline,
              //         decorationColor: Colors.blue[700]),
              //   ),
              // ),
              SizedBox(height: 20),
              // Center(
              //   child: SizedBox(
              //     width: 300, // Set the desired width here
              //     child: ElevatedButton(
              //       onPressed: () {},
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue[700],
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(30.0),
              //         ),
              //       ),
              //       child: Text(
              //         "Let's Practise!",
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
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
