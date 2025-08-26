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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _colors = [
    {'color': Colors.red, 'name': 'Red'},
    {'color': Colors.green, 'name': 'Green'},
    {'color': Colors.blue, 'name': 'Blue'},
    {'color': Colors.yellow, 'name': 'Yellow'},
    {'color': Colors.purple, 'name': 'Purple'},
    {'color': Colors.orange, 'name': 'Orange'},
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changing Button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentIndex = (_currentIndex + 1) % _colors.length;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _colors[_currentIndex]['color'],
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            _colors[_currentIndex]['name'],
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}