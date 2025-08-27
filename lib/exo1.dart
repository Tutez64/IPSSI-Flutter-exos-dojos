import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 95, 136),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Exo 1',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
      backgroundColor: Colors.grey[50],
      body: const Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 54, 127, 244),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ),
    );
  }
}