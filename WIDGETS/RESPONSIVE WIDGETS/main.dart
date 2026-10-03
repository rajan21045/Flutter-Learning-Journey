import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step 1: LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          Color bgColor;
          String label;

          if (width > 1200) {
            bgColor = Colors.lightBlue[100]!;
            label = 'Desktop';
          } else if (width > 600) {
            bgColor = Colors.green[100]!;
            label = 'Tablet';
          } else {
            bgColor = Colors.amber[100]!;
            label = 'Phone';
          }

          return Container(
            color: bgColor,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                '$label (${width.toInt()} px)',
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}