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
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 131, 167),
        title: const Text("Hello, \nWelcome"),
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
          fontSize: 22,
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const Center(
                  child: Text('Hello Rajan,\n It\'s Mobile layout'),
                );
              }
              return const Center(child: Text('Desktop layout'));
            },
          ),
        ),
      ),
    );
  }
}
