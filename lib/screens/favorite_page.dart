import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/product_list.dart';
import 'package:soccer_app/screens/product_detail.dart';
import 'package:soccer_app/widgets/favorite_product_card.dart';
import 'package:soccer_app/widgets/home_drawer.dart';

import '../constants/colors.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.favItems;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: const Text('Favoritos'),
      ),
      drawer: const HomeDrawer(),
      body: ListView.builder(
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) {
          return ChangeNotifierProvider.value(
            value: loadedProducts[index],
            child: GestureDetector(
              child: const FavoriteProductCard(),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(product: loadedProducts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
