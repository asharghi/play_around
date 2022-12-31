import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String image;

  const FoodItem({
    this.name = '',
    this.description = '',
    this.price = '',
    this.image = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 180,
          child: Container(
            margin: const EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 50.0,
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  Text(name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
