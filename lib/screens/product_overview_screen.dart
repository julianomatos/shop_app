
import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';
import '../models/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({super.key});

  final List<Product> loadedProducts = [
    // ignore: non_constant_identifier_names
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red',
        price: 29.99,
        imageUrl: '',
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10), 
        itemBuilder: (ctx, i) => ProductItem(
          id: loadedProducts[i].id, 
          title: loadedProducts[i].title, 
          imageUrl: loadedProducts[i].imageUrl,)),
    );
  }
}
