import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback onBuy;

  const ProductCard({super.key, required this.onBuy});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('iPhone', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: onBuy, child: const Text('Buy')),
          ],
        ),
      ),
    );
  }
}
