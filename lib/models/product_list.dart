import 'package:flutter/material.dart';
import 'package:soccer_app/data/dummy_data.dart';
import 'package:soccer_app/models/product_model.dart';

class ProductList with ChangeNotifier {
  final List<Product> _list = dummy_products;

  List<Product> get items => [..._list]; // cria uma 'cópia' da lista

  void addProduct(Product product) {
    items.add(product);
    notifyListeners();
  }
}
