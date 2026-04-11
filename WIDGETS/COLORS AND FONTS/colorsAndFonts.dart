//This is the second part of scaffoldAndAppbar.dart
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Hi, Good morning'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ), //AppBar
    body: Center(
      child: Text(
          "Hello, Ninjas",
        style: TextStyle(
            fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'Poppins-Black',
        ), //Textstyle
      ), //Text
    ), // Center
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.red[600],
      child: Text('Pressed'),
    ),
  ), //Scaffold
));//materialApp