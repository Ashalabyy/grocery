import 'package:auth_3/Screens/Home/Home_Categories.dart';
import 'package:auth_3/Screens/Home/Home_Header.dart';
import 'package:auth_3/Screens/Home/Popular_Products.dart';
import 'package:auth_3/Screens/Home/home_slider.dart';
import 'package:auth_3/constants/Dont_or_Have_acc.dart';
import 'package:flutter/material.dart';

import '../../widgets/Home/back_ground_view.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundView(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(
                height: 25,
              ),
              DontorHaveAcc(
                text: 'Categories',
                text2: 'see more',
                onpress: () {},
              ),
              const HomeCategories(),
              DontorHaveAcc(
                text: 'Special Offers',
                text2: 'see more',
                onpress: () {},
              ),
              const HomeSlider(),
              DontorHaveAcc(
                text: 'Popular Products',
                text2: 'see more',
                onpress: () {},
              ),
              const PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
