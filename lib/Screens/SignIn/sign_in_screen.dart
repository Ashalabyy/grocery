import 'package:auth_3/Screens/SignIn/body.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/SignInScreen';
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
