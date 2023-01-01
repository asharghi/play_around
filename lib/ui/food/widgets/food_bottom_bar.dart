import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food_bottom_bar_icon.dart';

class FoodBottomBar extends StatefulWidget {
  const FoodBottomBar({Key? key}) : super(key: key);

  @override
  State<FoodBottomBar> createState() => _FoodBottomBarState();
}

class _FoodBottomBarState extends State<FoodBottomBar> {
  String selectedIcon = 'home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            FoodBottomBarIcon(
              selectedIcon: Icons.home,
              deselectedIcon: Icons.home_outlined,
              isSelected: selectedIcon == 'home',
              onTap: () => {
                setState(() {
                  selectedIcon = 'home';
                })
              },
            ),
            FoodBottomBarIcon(
              selectedIcon: Icons.favorite,
              deselectedIcon: Icons.favorite_outline,
              isSelected: selectedIcon == 'favorite',
              onTap: () => {
                setState(() {
                  selectedIcon = 'favorite';
                })
              },
            ),
            Container(
              width: 70,
            ),
            FoodBottomBarIcon(
              selectedIcon: Icons.notifications,
              deselectedIcon: Icons.notifications_outlined,
              isSelected: selectedIcon == 'notifications',
              onTap: () => {
                setState(() {
                  selectedIcon = 'notifications';
                })
              },
            ),
            FoodBottomBarIcon(
              selectedIcon: Icons.shopping_bag,
              deselectedIcon: Icons.shopping_bag_outlined,
              isSelected: selectedIcon == 'shopping_bag',
              onTap: () => {
                setState(() {
                  selectedIcon = 'shopping_bag';
                })
              },
            ),
          ]),
        ),
        Center(
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.25),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ]),
            child: const Icon(
              CupertinoIcons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
