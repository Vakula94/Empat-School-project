import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      key: const ValueKey(2),
      child: Hero(
        tag: 'hero',
        child: Icon(Icons.flutter_dash, size: 100, color: Colors.white),
      ),
    );
  }
}
