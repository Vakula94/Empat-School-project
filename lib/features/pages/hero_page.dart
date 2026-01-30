import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Animation')),
      body: Center(
        child: Hero(
          tag: 'hero',
          child: Icon(Icons.flutter_dash, size: 200, color: Colors.amber),
        ),
      ),
    );
  }
}
