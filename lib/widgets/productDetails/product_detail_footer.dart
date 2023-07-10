import 'package:flutter/material.dart';
import '../add_or_remove_qty.dart';
import '../../constants/app_theme.dart';

class ProductDetailFooter extends StatelessWidget {
  const ProductDetailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            blurRadius: 10,
            color: const Color(0xFFB0B0B0).withOpacity(0.2),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      width: deviceSize.width,
      height: deviceSize.height * 0.1,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: deviceSize.width * 0.3,
                height: deviceSize.height * 0.05,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: AddOrRemoveQty(
                    onpress: () {},
                    onpress2: () {},
                    qty: 0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: deviceSize.width * 0.5,
                  height: deviceSize.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                    gradient: AppThemes.kPrimaryGradientColor,
                  ),
                  child: const Center(
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
