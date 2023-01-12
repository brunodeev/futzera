import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/data/firebase_data.dart';
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
    return SizedBox(
      height: 1000,
      child: StreamBuilder<QuerySnapshot>(
          stream: getList(),
          builder: (_, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.grey[900],
                  ),
                );
              case ConnectionState.active:
              case ConnectionState.done:
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 200,
                      childAspectRatio: 0.5),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (_, index) {
                    final DocumentSnapshot doc = snapshot.data!.docs[index];
                    return GestureDetector(
                      child: ProductCard(
                        id: doc['id'],
                        name: doc['name'],
                        type: doc['type'],
                        price: doc['price'],
                        image: doc['image'],
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                label: doc['name'],
                                img1: doc['img1'],
                                img2: doc['img2'],
                                img3: doc['img3'],
                                price: doc['price'],
                                isLiked: true),
                          ),
                        );
                      },
                    );
                  },
                );
            }
          }),
    );
  }
}
