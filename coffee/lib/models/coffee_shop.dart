import 'package:coffee/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Long Black",
      price: "45.25",
      imagePath: "assets/coffee.png",
    ),
    Coffee(
      name: "Espresso",
      price: "37.56",
      imagePath: "assets/espresso.png",
    ),
    Coffee(
      name: "Cold Coffee",
      price: "45.25",
      imagePath: "assets/ice-coffee.png",
    ),
    Coffee(
      name: "Latte",
      price: "45.25",
      imagePath: "assets/latte.png",
    ),
  ];

  //user cart

  final List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
