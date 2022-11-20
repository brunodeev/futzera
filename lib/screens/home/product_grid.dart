import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../../widgets/product_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<Product> product = [
    Product(
      id: 1,
      name: 'Barcelona',
      description: 'Camisa principal do FC Barcelona para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/barcelona.png',
    ),
    Product(
      id: 2,
      name: 'Real Madrid',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/real.png',
    ),
    Product(
      id: 3,
      name: 'Chelsea',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 300.00,
      image: 'assets/images/chelse.png',
    ),
    Product(
      id: 4,
      name: 'Liverpool',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/liv.png',
    ),
    Product(
      id: 5,
      name: 'Arsenal',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 300.00,
      image: 'assets/images/arsenal.png',
    ),
    Product(
      id: 6,
      name: 'Man. City',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/mancity.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 180,
          childAspectRatio: 0.5),
      itemCount: product.length,
      itemBuilder: (_, index) => ProductCard(
          name: product[index].name,
          image: product[index].image,
          price: product[index].price),
    );
  }
}
