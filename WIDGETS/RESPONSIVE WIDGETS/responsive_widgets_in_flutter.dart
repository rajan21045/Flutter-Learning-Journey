import 'package:flutter/material.dart';

void main() {
  /*
    Responsive Widgets in Flutter
    In Flutter, responsive widgets are widgets that automatically adjust their size, position, and layout according to the screen size and orientation.
    This is important because your Flutter app may run on:
    - 📱 Mobile phones
    - 📱 Tablets
    - 💻 Laptops
    - 🖥️ Desktop screens
  */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: Center(
          child: Container(
            //1. Using MediaQuery
            // MediaQuery gives you information about the current screen.
            width: MediaQuery.of(context).size.width * 0.5,
            height:200,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Responsive Container",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
