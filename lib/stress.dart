import 'package:cas/chat.dart';
import 'package:flutter/material.dart';
import 'package:cas/home.dart';
import 'dart:async';

class StressPage extends StatefulWidget {
  _StressPageState createState() => _StressPageState();
}


class _StressPageState extends State<StressPage> {
  bool isFavorite = false;
  bool isLiked = false;
  bool isDisliked = false;
  double _currentSliderValue = 0;
  bool _isPlaying = false;
  Timer? _timer;

void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startSlider() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        if (_currentSliderValue < 100) {
          _currentSliderValue += 1;
        } else {
          _timer?.cancel();
          _isPlaying = false;
        }
      });
    });
  }

  void _stopSlider() {
    _timer?.cancel();
  }
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
        title: const Text('Manage Stress',
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
                  "Find Your Calm \nPersonalized Tips and \nTools to Manage Stress",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.blue[700]),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen[50],
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8.0),
                  //width:4.0,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Practice deep breathing \nexercises: Deep breathing can \nhelp calm your nervous \nsystem and reduce feelings of \nanxiety.",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color:Colors.blue[700]),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        " Try inhaling slowly through \nyour nose for a count of four, \nholding your breath for a \ncount of four, and then \nexhaling slowly through your \nmouth for a count of four.",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color:Colors.blue[700]),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined),
          onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(isDisliked ? Icons.thumb_down : Icons.thumb_down_alt_outlined),
          onPressed: () {
            setState(() {
              isDisliked = !isDisliked;
            });
          },
        ),
      ],
    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Center(
                       child: Text(
                        'Calm Lofi',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                                           ),
                     ),
                    Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                          onPressed: () {
                            setState(() {
                              if (_isPlaying) {
                                _stopSlider();
                              } else {
                                _startSlider();
                              }
                              _isPlaying = !_isPlaying;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height:20),
               Center(
                 child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          'View Liked Tips',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
               ),
                  
            ]
          )
        )
      )
    );
  }
}