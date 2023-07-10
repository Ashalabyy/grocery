import 'package:auth_3/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemView extends StatelessWidget {
  const CartItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => const CartItem(
          imageUrl: 'assets/images/grapes.jpg',
          title: 'Grapes',
          price: 450,
        ),
      ),
    );
  }
}
