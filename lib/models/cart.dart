import 'dart:math';

import 'package:flutter/material.dart';
import 'package:soccer_app/models/cart_item.dart';
import 'package:soccer_app/models/product_model.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemsCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach(
      (key, cartItem) {
        total += cartItem.price * cartItem.quantity;
      },
    );
    return total;
  }

  bool isOnCart(Product product) {
    bool isOnBadge;
    if (_items.containsKey(product.id)) {
      isOnBadge = true;
    } else {
      isOnBadge = false;
    }
    return isOnBadge;
  }

  void addOneItemToBasket(CartItem c) {
    notifyListeners();
  }

  void removeOneItemToBasket(CartItem c) {
    bool found = _items.containsKey(c.id);
    if (found) {
      c.quantity - 1;
    } else {
      c.quantity;
    }
  }

  getTotalCart() {
    int total = 0;
    for (int i = 0; i <= _items.length; i++) {
      if (_items[i] != null) {
        total += _items[i]!.quantity;
      } else {
        total = total;
      }
    }
    return total;
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingItem) => CartItem(
          id: existingItem.id,
          productId: existingItem.productId,
          title: existingItem.title,
          quantity: existingItem.quantity + 1,
          price: existingItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CartItem(
          id: Random().nextDouble().toString(),
          productId: product.id,
          title: product.title,
          quantity: 1,
          price: product.price,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
