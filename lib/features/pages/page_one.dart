import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      key: const ValueKey(1),
      child: Hero(
        tag: 'hero',
        child: Icon(Icons.flutter_dash, size: 100, color: Colors.amber),
      ),
    );
  }
}
