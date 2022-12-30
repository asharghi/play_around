// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1200',
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
      body: ListView(
        padding: const EdgeInsets.only(top: 20, left: 20),
        children: [
          Container(
            padding: const EdgeInsets.only(right: 200),
            child: const Text(
              "Let's find food near you",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          const FoodSearchBar(),
          const SizedBox(height: 30),
          const FoodCategories()
        ],
      ),
    );
  }
}
