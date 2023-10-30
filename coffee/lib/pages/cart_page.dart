import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: ((context, value, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text("Your Cart", style: TextStyle(fontSize: 20.0)),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: ((context, index) {
                        Coffee eachCoffee = value.userCart[index];
                        return CoffeeTile(
                          icon: Icon(Icons.delete),
                          coffee: eachCoffee,
                          onClick: () => removeFromCart(eachCoffee),
                        );
                      }))),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Center(
                    child:
                        Text("Pay Now", style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        ),
      );
    }));
  }
}
