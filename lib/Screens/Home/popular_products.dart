import 'package:auth_3/Screens/ProductDetails/product_detail_screen.dart';

import 'package:flutter/material.dart';

import '../../widgets/Products/product_item.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetailScreen.routeName);
      },
      child: SizedBox(
        height: deviceSize.height * 0.35,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => const PopularProductItem(),
        ),
      ),
    );
  }
}
