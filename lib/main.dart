import 'package:flutter/material.dart';
import 'package:flutter_chefcompanion/models/shop.dart';
import 'package:flutter_chefcompanion/screens/cart_screen.dart';
import 'package:flutter_chefcompanion/screens/intro_screen.dart';
import 'package:flutter_chefcompanion/screens/menu_screen.dart';
import 'package:flutter_chefcompanion/themes/lightmode_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      theme: lightMode,
      routes: {
        '/intro_screen': (context) => const IntroScreen(),
        '/menu_screen': (context) => const MenuScreen(),
        '/cart_screen': (context) => const CartScreen(),
      },
    );
  }
}
