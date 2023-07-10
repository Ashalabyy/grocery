import 'package:flutter/material.dart';

import '../../widgets/Home/home_categorie.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: deviceSize.width,
      height: deviceSize.height * 0.2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HomeCategorieView(imageUrl: 'assets/images/fru1.png'),
              HomeCategorieView(imageUrl: 'assets/images/fru5.png'),
              HomeCategorieView(imageUrl: 'assets/images/fru4.png'),
              HomeCategorieView(imageUrl: 'assets/images/fru2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
