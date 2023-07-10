import 'package:auth_3/constants/app_theme.dart';
import 'package:auth_3/widgets/custom_appBar_arrow.dart';
import 'package:flutter/material.dart';
import '../../widgets/Products/products_grid.dart';
import '../cart_screen.dart';
import '../../widgets/cart_icon.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/ProductsScreen';
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUCTS',
          style: AppThemes.appBarTextStyle,
        ),
        leading: const CustomAppBarArrow(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: IconBtnWithCounter(
              press: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              svgSrc: "assets/icons/CartIcon.svg",
              numOfitem: 3,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => const ProductsGrid(),
        ),
      ),
    );
  }
}
