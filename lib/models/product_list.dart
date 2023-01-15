import 'package:flutter/material.dart';
import 'package:soccer_app/data/dummy_data.dart';
import 'package:soccer_app/models/product_model.dart';

class ProductList with ChangeNotifier {
  List<Product> _list = dummy_products;

  List<Product> get items => [..._list];

  void addProduct(Product product) {
    items.add(product);
  }
}
