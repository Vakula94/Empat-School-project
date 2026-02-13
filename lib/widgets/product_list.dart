import 'package:flutter/material.dart';
import 'product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ['iPhone 18', 'Xiaomi Ultra', 'Samsung Galaxy'];

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(name: products[index]);
      },
    );
  }
}
