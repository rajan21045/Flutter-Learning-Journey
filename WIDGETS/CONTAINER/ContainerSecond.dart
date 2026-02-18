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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Containers"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text(
                "Red Container",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Blue Container",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.green,
              child: const Text(
                "Green Container",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
