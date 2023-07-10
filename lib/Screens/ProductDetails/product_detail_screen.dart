import 'package:auth_3/Screens/cart_screen.dart';
import 'package:auth_3/widgets/cart_icon.dart';
import 'package:auth_3/widgets/custom_appBar_arrow.dart';
import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';
import 'body.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/ProductDetailScreen';
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'APPLE',
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
        ),
        body: const Body(),
      ),
    );
  }
}
