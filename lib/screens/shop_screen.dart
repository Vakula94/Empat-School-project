import 'package:flutter/material.dart';
import '../widgets/product_list.dart';
import '../widgets/cart_info.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.3,
          colors: [Color(0xFF1B2735), Color(0xFF090A0F)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
          title: const Text('Space Shop'),
        ),
        body: Column(
          children: const [
            CartInfo(),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}
