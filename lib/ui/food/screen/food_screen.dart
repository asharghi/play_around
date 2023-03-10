import 'package:flutter/material.dart';
import 'package:play_around/ui/food/widgets/food_bottom_bar.dart';
import 'package:play_around/ui/food/widgets/food_widgets.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 90,
        backgroundColor: Colors.white,
        leading: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://www.w3schools.com/w3images/avatar6.png',
                ),
              ),
            )),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.grey[200]!,
                width: 2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 20, left: 20),
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 200),
                    child: const Text(
                      "Let's find food near you",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const FoodSearchBar(),
                  const SizedBox(height: 30),
                  FoodCategories(),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Popular items",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "View More",
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const FoodItems(),
                ],
              ),
            ),
            const FoodBottomBar()
          ],
        ),
      ),
    );
  }
}
