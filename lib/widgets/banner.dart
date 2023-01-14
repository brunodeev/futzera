import 'package:flutter/material.dart';

import '../models/banner_model.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final BannerImg index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.network(
        index.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
