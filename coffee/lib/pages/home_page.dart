import 'package:coffee/components/button_nav_bar.dart';
import 'package:coffee/const/const.dart';
import 'package:coffee/pages/cart_page.dart';
import 'package:coffee/pages/shop_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _setIndex = 0;

  void navigationButtomBar(int index) {
    setState(() {
      _setIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        bottomNavigationBar: ButtonNavBar(
          onClickChange: (index) => navigationButtomBar(index),
        ),
        body: _pages[_setIndex],
      ),
    );
  }
}
