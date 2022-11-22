class Product {
  final String name, label, description, category;
  final int id;
  final double price;
  final List<String> images;

  Product({
    required this.id,
    required this.name,
    required this.label,
    required this.description,
    required this.category,
    required this.price,
    required this.images,
  });
}

List<Product> product = [
  Product(
    id: 1,
    name: 'Barcelona',
    label: 'Camisa Barcelona 2022/23',
    description: 'Camisa principal do FC Barcelona para a temporada 2022/23.',
    category: 'Camisas',
    price: 350.00,
    images: [
      'assets/images/barcelona1.webp',
      'assets/images/barcelona2.webp',
      'assets/images/barcelona3.jpg',
    ],
  ),
  Product(
    id: 2,
    name: 'Real Madrid',
    label: 'Camisa Real Madrid 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 350.00,
    images: [
      'assets/images/real1.webp',
      'assets/images/real2.webp',
      'assets/images/real3.webp',
    ],
  ),
  Product(
    id: 3,
    name: 'Chelsea',
    label: 'Camisa Chelsea 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 300.00,
    images: [
      'assets/images/chelsea1.webp',
      'assets/images/chelsea2.webp',
      'assets/images/chelsea3.jpg',
    ],
  ),
  Product(
    id: 4,
    name: 'Liverpool',
    label: 'Camisa Liverpool 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 350.00,
    images: [
      'assets/images/liverpool1.webp',
      'assets/images/liverpool2.webp',
      'assets/images/liverpool3.jpg',
    ],
  ),
  Product(
    id: 5,
    name: 'Arsenal',
    label: 'Camisa Arsenal 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 300.00,
    images: [
      'assets/images/arsenal1.webp',
      'assets/images/arsenal2.webp',
      'assets/images/arsenal3.webp',
    ],
  ),
  Product(
    id: 6,
    name: 'Inter de Milão',
    label: 'Camisa Inter de Milão 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 350.00,
    images: [
      'assets/images/inter1.webp',
      'assets/images/inter2.webp',
      'assets/images/inter3.webp',
    ],
  ),
  Product(
    id: 7,
    name: 'PSG',
    label: 'Camisa Paris Saint-Germain 2022/23',
    description:
        'Camisa principal da Seleção Brasileira para a temporada 2022/23.',
    category: 'Camisas',
    price: 350.00,
    images: [
      'assets/images/psg1.webp',
      'assets/images/psg2.webp',
      'assets/images/psg3.jpg',
    ],
  ),
];
