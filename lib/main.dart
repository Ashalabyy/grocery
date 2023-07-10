import 'package:auth_3/Screens/ProductDetails/product_detail_screen.dart';
import 'package:auth_3/Screens/Products/products_screen.dart';
import 'package:auth_3/Screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/SignIn/sign_in_screen.dart';
import 'constants/app_theme.dart';
import './Screens/SignUp/sing_up_screen.dart';
import 'Screens/Home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
      theme: AppThemes.appThemeData,
      initialRoute: ProductsScreen.routeName,
      routes: {
        CartScreen.routeName: (context) => const CartScreen(),
        ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
        ProductsScreen.routeName: (context) => const ProductsScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
    );
  }
}
