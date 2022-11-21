class Product {
  final String name, label, description, category, image;
  final int id;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.label,
    required this.description,
    required this.category,
    required this.price,
    required this.image,
  });
}

List<Product> product = [
  Product(
    id: 1,
    name: 'Barcelona',
    label: 'Camisa Barcelona 2022/23',
    description: 'Camisa principal do FC Barcelona para a temporada 2022/23.',
    category: 'Camisas',
    price: 300.00,
    image: 'assets/images/barcelona.png',
  ),
  Product(
    id: 2,
    name: 'Real Madrid',
    label: 'Camisa Barcelona 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 400.00,
    image: 'assets/images/real.png',
  ),
  Product(
    id: 3,
    name: 'Chelsea',
    label: 'Camisa Barcelona 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 400.00,
    image: 'assets/images/chelse.png',
  ),
  Product(
    id: 4,
    name: 'Liverpool',
    label: 'Camisa Barcelona 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 400.00,
    image: 'assets/images/liv.png',
  ),
  Product(
    id: 5,
    name: 'Man. City',
    label: 'Camisa Barcelona 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 400.00,
    image: 'assets/images/mancity.png',
  ),
  Product(
    id: 6,
    name: 'Man. United',
    label: 'Camisa Manchester 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 400.00,
    image: 'assets/images/manutd.jpg',
  ),
];
