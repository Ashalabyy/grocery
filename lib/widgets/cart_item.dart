import 'package:flutter/material.dart';
import '../constants/app_theme.dart';
import 'add_or_remove_qty.dart';

class CartItem extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double price;
  const CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  var qty = 0;
  void increment() {
    setState(() {
      qty++;
    });
  }

  void decrement() {
    if (qty <= 1) {
      return;
    } else {
      setState(() {
        qty--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(16),
      height: deviceSize.height * 0.12,
      width: deviceSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: deviceSize.width * 0.25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Container(
                decoration: const BoxDecoration()
                    .defaultImageBoxdeCorationExt(widget.imageUrl),
              ),
            ),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration().defaultBoxdecoration,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: deviceSize.width * 0.6,
                    height: deviceSize.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 15,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.6,
                            height: deviceSize.height * 0.04,
                            child: Row(
                              children: [
                                AddOrRemoveQty(
                                  onpress: increment,
                                  onpress2: decrement,
                                  qty: qty,
                                ),
                                const Spacer(),
                                Text('${widget.price}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
