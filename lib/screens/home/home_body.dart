import 'package:flutter/material.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/models/banner_model.dart';
import 'package:soccer_app/screens/home/product_grid.dart';

import '../../widgets/banner.dart';
import '../../widgets/dot_indicator.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            height: 160,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedItem = index % banner.length;
                });
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BannerImage(
                  index: banner[index % banner.length],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                banner.length,
                (index) => Indicator(
                  isActive: _selectedItem == index ? true : false,
                ),
              ),
            ],
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
