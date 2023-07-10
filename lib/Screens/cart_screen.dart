import 'package:auth_3/constants/app_theme.dart';
import 'package:auth_3/widgets/cart_item_view.dart';
import 'package:auth_3/widgets/cart/cheack_out_Button.dart';
import 'package:auth_3/widgets/custom_appBar_arrow.dart';
import 'package:flutter/material.dart';
import '../widgets/cart/ticket_price.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/CartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomAppBarArrow(),
          title: const Text(
            'CART',
            style: AppThemes.appBarTextStyle,
          ),
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.2),
                blurRadius: 2,
                offset: const Offset(1, 0),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          width: deviceSize.width,
          height: deviceSize.height * 0.12,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: CheackOutButton(),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CartItemView(),
            SizedBox(
              height: 10,
            ),
            TicketPrice(),
          ],
        ),
      ),
    );
  }
}
