import 'package:flutter/material.dart';
import 'package:soccer_app/screens/detail/product_detail.dart';

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
      label: 'Camisa Barcelona 2022/23',
      description: 'Camisa principal do FC Barcelona para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/barcelona.png',
    ),
    Product(
      id: 2,
      name: 'Real Madrid',
      label: 'Camisa Real Madrid 2022/23',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/real.png',
    ),
    Product(
      id: 3,
      name: 'Chelsea',
      label: 'Camisa Chelsea 2022/23',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 300.00,
      image: 'assets/images/chelse.png',
    ),
    Product(
      id: 4,
      name: 'Liverpool',
      label: 'Camisa Liverpool 2022/23',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 350.00,
      image: 'assets/images/liv.png',
    ),
    Product(
      id: 5,
      name: 'Arsenal',
      label: 'Camisa Arsenal 2022/23',
      description:
          'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
      category: 'Camisas',
      price: 300.00,
      image: 'assets/images/arsenal.png',
    ),
    Product(
      id: 6,
      name: 'Man. City',
      label: 'Camisa Manchester City 2022/23',
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
      itemBuilder: (_, index) => GestureDetector(
        child: ProductCard(
            name: product[index].name,
            image: product[index].image,
            price: product[index].price),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetail(
                  label: product[index].label, img: product[index].image),
            ),
          );
        },
      ),
    );
  }
}
