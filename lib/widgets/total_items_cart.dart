import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TotalItemsCart extends StatelessWidget {
  const TotalItemsCart(
    BuildContext context, {
    Key? key,
    required this.sum,
  }) : super(key: key);

  final double sum;

  @override
  Widget build(BuildContext context) {
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
                'Total: $sum',
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
  }
}
