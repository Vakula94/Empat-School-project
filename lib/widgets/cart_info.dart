import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CartInfo extends StatelessWidget {
  const CartInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
        return Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withValues(alpha: 0.5),
                blurRadius: 25,
              ),
            ],
          ),
          child: Text(
            'In Cart: ${cart.itemCount}',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        );
      },
    );
  }
}
