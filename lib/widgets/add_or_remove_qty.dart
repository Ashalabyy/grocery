import 'package:flutter/material.dart';
import '../constants/app_theme.dart';

class AddOrRemoveQty extends StatelessWidget {
  final VoidCallback onpress;
  final VoidCallback onpress2;
  final int qty;
  const AddOrRemoveQty({
    super.key,
    required this.qty,
    required this.onpress,
    required this.onpress2,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: deviceSize.width * 0.25,
      height: deviceSize.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onpress,
            child: Container(
              width: deviceSize.width * 0.08,
              height: deviceSize.height * 0.08,
              decoration: AppThemes.kprimaryBoxdecoration,
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
          Text(
            '$qty',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: onpress2,
            child: Container(
              width: deviceSize.width * 0.08,
              height: deviceSize.height * 0.08,
              decoration: AppThemes.kprimaryBoxdecoration,
              child: const Center(
                child: Icon(
                  Icons.remove,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
