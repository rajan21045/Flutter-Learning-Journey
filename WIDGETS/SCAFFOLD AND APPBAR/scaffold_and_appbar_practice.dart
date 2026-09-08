import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: Text('Hello, Everyone'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello Everyone'),
          SizedBox(height: 10),

          Text('Rajan Poudel This Side!!'),
          SizedBox(height:10),

          Text("Welcome To Flutter!!!"),
        ],
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text("Click"),
    ),
  ),
));