import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Practicing Alignment'),
      centerTitle: true,
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text("Center Widget"),
            ),
          ),

          SizedBox(height: 20),
          Container(
            height: 100,
            color: Colors.blueAccent,
            child: Align(
              alignment: Alignment.bottomLeft, // Position child bottom-left
              child: Text("Align Bottom Left"),
            ),
          ),

          SizedBox(height: 20),
          Container(
            height: 100,
            color: Colors.deepOrange,
            alignment: Alignment.bottomRight,
            child: Text('Align Bottom Right'),
          )
        ],
      ),
    ),
  ),
));