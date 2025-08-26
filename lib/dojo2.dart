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
  final Map<String, Color> _colorMap = {
    'red': Colors.red,
    'rouge': Colors.red,
    'green': Colors.green,
    'vert': Colors.green,
    'blue': Colors.blue,
    'bleu': Colors.blue,
    'yellow': Colors.yellow,
    'jaune': Colors.yellow,
    'purple': Colors.purple,
    'violet': Colors.purple,
    'orange': Colors.orange,
    'black': Colors.black,
    'noir': Colors.black,
    'white': Colors.white,
    'blanc': Colors.white,
  };

  String _colorName = '';
  Color _currentColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Input Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Entrez une couleur (français ou anglais)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _colorName = value.trim().toLowerCase();
                  _currentColor = _colorMap[_colorName] ?? Colors.grey;
                });
              },
            ),
            const SizedBox(height: 32),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _currentColor,
                border: Border.all(color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'La couleur est $_colorName',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}