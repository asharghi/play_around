import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  final bool isSelected;
  final Function? onTap;
  final String emoji;
  final String text;

  const FoodCategory({
    this.onTap,
    super.key,
    this.isSelected = false,
    this.emoji = '',
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isSelected
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
        onPressed: () => {
          onTap!(),
        },
        style: TextButton.styleFrom(
          backgroundColor:
              isSelected ? Theme.of(context).primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 28)),
              SizedBox(width: emoji.isNotEmpty && text.isNotEmpty ? 10 : 0),
              Text(text,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
