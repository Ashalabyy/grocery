import 'package:auth_3/constants/app_theme.dart';
import 'package:flutter/material.dart';
import '../../widgets/productDetails/product_detail_data.dart';
import '../../widgets/productDetails/product_detail_footer.dart';
import '../../widgets/productDetails/product_detail_icon.dart';
import '../../widgets/productDetails/product_detail_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        const Positioned(
          top: 65,
          child: ProductDetailImage(imageUrl: 'assets/images/grapes.jpg'),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration().defaultBoxdecoration,
            width: deviceSize.width,
            height: deviceSize.height * 0.39,
            child: Stack(
              children: const [
                Positioned(
                  top: 6,
                  left: 5,
                  right: 3,
                  child: ProductDetailData(),
                ),
                Positioned(
                  top: 20,
                  right: 0,
                  child: ProductDetailIcon(),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          child: ProductDetailFooter(),
        ),
      ],
    );
  }
}
