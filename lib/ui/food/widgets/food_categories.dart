// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: const [
          FoodCategory(text: 'All'),
          SizedBox(width: 10),
          FoodCategory(text: 'Meats item', emoji: '🍖', isSelected: true),
          SizedBox(width: 10),
          FoodCategory(emoji: '🍳'),
          SizedBox(width: 10),
          FoodCategory(emoji: '🦐'),
        ],
      ),
    );
  }
}

class FoodCategory extends StatefulWidget {
  final bool isSelected;
  final String emoji;
  final String text;
  const FoodCategory({
    Key? key,
    this.isSelected = false,
    this.text = '',
    this.emoji = '',
  }) : super(key: key);

  @override
  State<FoodCategory> createState() => FoodCategoryState();
}

class FoodCategoryState extends State<FoodCategory> {
  bool _isSelected = false;
  String _text = '';
  String _emoji = '';
  @override
  void initState() {
    _isSelected = widget.isSelected;
    _text = widget.text;
    _emoji = widget.emoji;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _isSelected
          ? null
          : BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 50.0,
                  spreadRadius: 0.1,
                ),
              ],
            ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor:
              _isSelected ? Theme.of(context).primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(_emoji, style: const TextStyle(fontSize: 28)),
              SizedBox(width: _emoji.isNotEmpty && _text.isNotEmpty ? 10 : 0),
              Text(_text,
                  style: TextStyle(
                      color: _isSelected ? Colors.white : Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
