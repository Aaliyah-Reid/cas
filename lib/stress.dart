import 'package:cas/chat.dart';
import 'package:flutter/material.dart';
import 'package:cas/home.dart';

class StressPage extends StatefulWidget {
  _StressPageState createState() => _StressPageState();
}


class _StressPageState extends State<StressPage> {
  bool isFavorite = false;
  bool isLiked = false;
  bool isDisliked = false;
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
                    Text(
                      "Paragraph 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum.",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color:Colors.blue[700]),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Paragraph 2: Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus.",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color:Colors.blue[700]),
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
            ]
          )
        )
      )
    );
  }
}