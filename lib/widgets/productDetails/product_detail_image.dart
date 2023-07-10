import 'package:flutter/material.dart';

class ProductDetailImage extends StatelessWidget {
  final String imageUrl;
  const ProductDetailImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.contain,
        ),
      ),
      width: deviceSize.width,
      height: deviceSize.height * 0.32,
    );
  }
}
