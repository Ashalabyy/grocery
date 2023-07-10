import 'package:flutter/material.dart';

class HomeCategorieView extends StatelessWidget {
  final String imageUrl;
  const HomeCategorieView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(0, 1),
          )
        ],
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.contain,
        ),
      ),
      width: deviceSize.width * 0.15,
      height: deviceSize.height * 0.15,
    );
  }
}
