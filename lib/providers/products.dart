import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 129.99,
      imageUrl: 'https://static.netshoes.com.br/produtos/camisa-internacional-i-2324-sn-torcedor-adidas-masculina/16/FB8-4694-016/FB8-4694-016_zoom1.jpg?ts=1677227566&',
    ),
    Product(
      id: 'p2',
      title: 'White Shirt',
      description: 'A red shirt - it is pretty red',
      price: 129.99,
      imageUrl: 'https://static.netshoes.com.br/produtos/camisa-internacional-ii-2223-sn-torcedor-adidas-masculina/14/3ZP-7212-014/3ZP-7212-014_zoom1.jpg?ts=1666805192&',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((p) => p.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
