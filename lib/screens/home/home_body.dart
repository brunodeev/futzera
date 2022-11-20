import 'package:flutter/material.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/models/banner_model.dart';
import 'package:soccer_app/screens/home/product_grid.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerImages = BannerImg.banner;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(color: Colors.red),
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bannerImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/images/messi_and_cristiano.png'),
                        fit: BoxFit.cover,
                      )),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Tendências',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
                const ProductGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
