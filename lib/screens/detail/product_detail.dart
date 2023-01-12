import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(
      {super.key,
      required this.label,
      required this.price,
      required this.isLiked,
      required this.img1,
      required this.img2,
      required this.img3});

  final String label, img1, img2, img3;
  final int price;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      img1,
      img2,
      img3,
    ];
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
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  width: double.infinity,
                  height: 350,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          list[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 352,
                        child: Text(
                          label,
                          style: const TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Text('R\$ ${price.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.7),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Comprar',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child:
                              const Icon(Icons.favorite, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
