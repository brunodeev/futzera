import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/product_list.dart';
import 'package:soccer_app/models/product_model.dart';
import 'package:soccer_app/screens/detail/product_detail.dart';
import '../../widgets/product_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.items;

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
          childAspectRatio: 0.5),
      itemCount: loadedProducts.length,
      itemBuilder: (_, index) {
        return ChangeNotifierProvider(
          create: (_) => loadedProducts[index],
          child: GestureDetector(
            child: const ProductCard(),
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
    );
  }
}
