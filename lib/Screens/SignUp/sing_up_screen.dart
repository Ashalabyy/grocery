import './body.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/SignUpScreen';
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
