import 'package:flutter/material.dart';
import 'product_card.dart';
import 'card_widget.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int cartCount = 0;

  void addToCart() {
    setState(() {
      cartCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Store')),
      body: Column(
        children: [
          CartWidget(cartCount: cartCount),
          ProductCard(onBuy: addToCart),
        ],
      ),
    );
  }
}
