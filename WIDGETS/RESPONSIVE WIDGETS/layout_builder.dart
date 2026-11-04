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
      appBar: AppBar(title: const Text('LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Container(
              color: Colors.amber,
              child: const Center(
                child: Text("Hello, This Is Mobile Layout",
                style: TextStyle(
                        fontSize: 24.0,                 // Size of the text
                        fontWeight: FontWeight.bold,    // Thickness (e.g., w100 to w900)
                        fontStyle: FontStyle.italic,    // Normal or italic
                        color: Colors.blue,             // Text color
                ),
                ),
              ),
            );
          } else if (constraints.maxWidth < 1200) {
            return const Text("Desktop Layout");
          } else {
            return const Text("Large Desktop Layout");
          }
        },
      ),
    );
  }
}
