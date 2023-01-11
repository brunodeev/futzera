import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/data/firebase_data.dart';
import 'package:soccer_app/widgets/cart_product_card.dart';

import '../../constants/colors.dart';
import '../../widgets/product_card.dart';
import '../../widgets/total_items_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: const Text('Carrinho'),
      ),
      body: Stack(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: getCartList(),
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
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (_, index) {
                      final DocumentSnapshot doc = snapshot.data!.docs[index];
                      return (CartProductCard(
                          name: doc['name'],
                          image: doc['image'],
                          price: doc['price']));
                    },
                  );
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalItemsCart(
              context,
            ),
          ),
        ],
      ),
    );
  }
}
