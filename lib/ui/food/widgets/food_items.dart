import 'package:flutter/material.dart';
import 'food_item.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FoodItem(
            name: 'Gegrilltes steak',
            description: 'Steak mit Snack',
            price: '\$12.50',
            image: 'assets/plate_1.png',
          ),
          SizedBox(width: 20),
          FoodItem(
            name: 'Gegrilltes steak',
            description: 'Steak mit Snack',
            price: '\$12.50',
            image: 'assets/plate_2.png',
          ),
        ],
      ),
    );
  }
}
