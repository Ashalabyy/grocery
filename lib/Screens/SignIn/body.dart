import 'package:flutter/material.dart';
import '../../widgets/Home/back_ground_view.dart';
import '../../widgets/logo_container.dart';
import '../SignIn/sign_in_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundView(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                LogoContainer(),
                SizedBox(
                  height: 15,
                ),
                SiginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
