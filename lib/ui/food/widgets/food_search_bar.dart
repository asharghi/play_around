import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodSearchBar extends StatelessWidget {
  const FoodSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            const Icon(
              CupertinoIcons.search,
              color: Color.fromARGB(255, 42, 42, 42),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search for food',
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 42, 42, 42),
                ),
              ),
            ),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  color: Color.fromARGB(255, 80, 80, 80),
                ))
          ],
        ),
      ),
    );
  }
}
