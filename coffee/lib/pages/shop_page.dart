import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => ShopPageState();
}

class ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    // let the user know successfully added
    showDialog(
        context: context,
        builder: (context) {
          Future.delayed(const Duration(milliseconds: 400), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(content: const Text("Added to cart!"));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const Text(
                  "How would you like your coffee?",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.coffeeShop.length,
                        itemBuilder: ((context, index) {
                          Coffee eachCoffee = value.coffeeShop[index];
                          return CoffeeTile(
                            icon: const Icon(Icons.add),
                            coffee: eachCoffee,
                            onClick: () => addToCart(eachCoffee),
                          );
                        })))
              ],
            ),
          ),
        );
      },
    );
  }
}
