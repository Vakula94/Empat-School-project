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
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.2,
          colors: [Color(0xFF1B2735), Color(0xFF090A0F)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Інтернет-магазин 🚀'),
        ),
        body: Column(
          children: [
            CartWidget(cartCount: cartCount),
            ProductCard(onBuy: addToCart),
          ],
        ),
      ),
    );
  }
}
