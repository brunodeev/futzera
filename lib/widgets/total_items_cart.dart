import 'package:flutter/material.dart';
import 'package:soccer_app/data/firebase_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/colors.dart';

class TotalItemsCart extends StatelessWidget {
  TotalItemsCart(
    BuildContext context, {
    Key? key,
  }) : super(key: key);
  double total = 0;
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db.collection('Favorites').snapshots().listen(
      (snapshot) {
        for (DocumentSnapshot item in snapshot.docs) {
          final dados = item.get('price');
          total += dados;
        }
      },
    );

    return StreamBuilder(
        stream: getCartList(),
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 0.1,
                    blurRadius: 13,
                    color: Color.fromARGB(255, 167, 167, 167),
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: ${total.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Confirmar'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

RecuperarLista() {
  return;
}
