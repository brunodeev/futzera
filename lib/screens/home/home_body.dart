import 'package:flutter/material.dart';
import 'package:soccer_app/models/banner_model.dart';
import 'package:soccer_app/screens/home/product_grid.dart';

import '../../constants/section_label.dart';
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
      padding: const EdgeInsets.all(15),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 160,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
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
          const SizedBox(height: 15),
          const SectionLabel(),
          const ProductGrid(),
        ],
      ),
    );
  }
}
