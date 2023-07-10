import 'package:flutter/material.dart';

class ProductDetailIcon extends StatelessWidget {
  const ProductDetailIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        color: Colors.orange.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: const Icon(
        Icons.favorite,
        size: 18,
        color: Colors.orange,
      ),
    );
  }
}
