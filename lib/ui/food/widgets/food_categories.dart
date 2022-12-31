import 'package:flutter/material.dart';
import 'food_category.dart';

class FoodCategories extends StatefulWidget {
  FoodCategories({Key? key}) : super(key: key);
  final List<FoodCategory> _categories = [
    const FoodCategory(text: 'All'),
    const FoodCategory(text: 'Meats item', emoji: '🍖'),
    const FoodCategory(emoji: '🍳'),
    const FoodCategory(emoji: '🦐'),
  ];
  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FoodCategory(
              text: widget._categories[index].text,
              emoji: widget._categories[index].emoji,
              isSelected: index == _selectedCategory,
              onTap: () => {
                setState(() {
                  _selectedCategory = index;
                })
              },
            ),
          );
        },
        itemCount: widget._categories.length,
      ),
    );
  }
}
