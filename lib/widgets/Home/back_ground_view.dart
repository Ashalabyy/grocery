import 'package:flutter/material.dart';

class BackGroundView extends StatelessWidget {
  final Widget body;
  const BackGroundView({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/wallpaper.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: body,
    );
  }
}
