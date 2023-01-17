import 'package:flutter/material.dart';
import 'package:soccer_app/data/dummy_data.dart';
import 'package:soccer_app/models/product_model.dart';

class ProductList with ChangeNotifier {
  final List<Product> _list = dummy_products;
  bool _showFavoriteOnly = false;

  List<Product> get items {
    if (_showFavoriteOnly) {
      _list.where((prod) => prod.isFavorite).toList();
    }
    return [..._list];
  }

  void showAll() {
    _showFavoriteOnly = false;
    notifyListeners();
  }

  void addProduct(Product product) {
    items.add(product);
    notifyListeners();
  }
}
