import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/constants/colors.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    required this.id,
    required this.name,
    required this.image,
    super.key,
    required this.price,
    required this.type,
  });

  final int id;
  final String name, image, type;
  final int price;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  var isCart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              widget.image,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 15, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'R\$ ${widget.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: kSecondaryColor, fontSize: 14),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isCart == false
                            ? addToFavorite(
                                id: widget.id,
                                name: widget.name,
                                price: widget.price,
                                type: widget.type,
                                image: widget.image,
                              )
                            : removeToFavorite(
                                name: widget.name,
                              );
                        setState(() {
                          isCart = !isCart;
                        });
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 18,
                        color:
                            isCart == false ? Colors.grey : Colors.greenAccent,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future addToFavorite({
  required int id,
  required String name,
  required String type,
  required int price,
  required String image,
}) async {
  final users = FirebaseFirestore.instance.collection('Favorites').doc(name);
  users.set({
    'id': id,
    'name': name,
    'price': price,
    'type': type,
    'image': image,
  });
  return true;
}

Future removeToFavorite({
  required String name,
}) async {
  FirebaseFirestore.instance.collection('Favorites').doc(name).delete();
  return false;
}
