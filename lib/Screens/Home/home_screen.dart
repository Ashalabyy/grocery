import './Body.dart';
import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FRUIT SHOP',
            style: AppThemes.appBarTextStyle,
          ),
        ),
        body: const Body(),
      ),
    );
  }
}
