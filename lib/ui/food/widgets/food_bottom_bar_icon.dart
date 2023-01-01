import 'package:flutter/material.dart';

class FoodBottomBarIcon extends StatelessWidget {
  final IconData deselectedIcon;
  final IconData selectedIcon;
  final bool isSelected;
  final Function onTap;
  const FoodBottomBarIcon({
    Key? key,
    required this.deselectedIcon,
    required this.selectedIcon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onTap()},
      child: Column(
        children: [
          Container(height: 10),
          Icon(isSelected ? selectedIcon : deselectedIcon,
              size: 30,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.grey[400]),
          Container(height: 5),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
          Container(height: 40),
        ],
      ),
    );
  }
}
