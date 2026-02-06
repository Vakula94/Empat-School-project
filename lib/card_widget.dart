import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final int cartCount;

  const CartWidget({super.key, required this.cartCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text('Items in Bucket', style: const TextStyle(fontSize: 20)),
    );
  }
}
