import 'package:flutter/material.dart';
import 'app_theme.dart';

class DontorHaveAcc extends StatelessWidget {
  final String text;
  VoidCallback onpress;
  final String text2;
  DontorHaveAcc({
    super.key,
    required this.text,
    required this.text2,
    required this.onpress,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppThemes.bodyText1,
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onpress,
          child: Text(
            text2,
            style: AppThemes.bodyText2,
          ),
        ),
      ],
    );
  }
}
