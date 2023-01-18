import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id, title, description, category, imageUrl;
  final double price;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
