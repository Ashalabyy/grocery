// ignore: file_names
import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';

class CheackOutButton extends StatelessWidget {
  const CheackOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * 0.8,
      height: deviceSize.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: AppThemes.kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Center(
        child: Text(
          'CHEACK OUT',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
