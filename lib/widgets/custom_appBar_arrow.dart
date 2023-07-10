// ignore: file_names
import 'package:flutter/material.dart';
import 'package:auth_3/constants/app_theme.dart';

class CustomAppBarArrow extends StatelessWidget {
  const CustomAppBarArrow({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        width: deviceSize.width * 0.1,
        height: deviceSize.height * 0.1,
        decoration: BoxDecoration(
          color: AppThemes.primaryColor,
          gradient: AppThemes.kPrimaryGradientColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
