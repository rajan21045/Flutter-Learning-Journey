import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Hi, Good morning'),
      centerTitle: true,
    ), //AppBar
    body: Center(
      child: Text("Hello, Ninjas"),
    ), // Center
    floatingActionButton: FloatingActionButton(
      onPressed: null,
      child: Text('Pressed'),
    ),
  ), //Scaffold
));//materialApp