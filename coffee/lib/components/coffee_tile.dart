import 'package:coffee/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onClick;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onClick,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(24.0),
      ),
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onClick, icon: icon),
      ),
    );
  }
}
