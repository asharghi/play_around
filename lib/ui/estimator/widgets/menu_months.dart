import 'package:flutter/material.dart';
import 'package:play_around/constants/colors.dart';
import 'package:play_around/providers/menu_months_provider.dart';
import 'package:provider/provider.dart';

class MenuMonths extends StatefulWidget {
  const MenuMonths({Key? key}) : super(key: key);

  @override
  State<MenuMonths> createState() => _MenuMonthsState();
}

class _MenuMonthsState extends State<MenuMonths> {
  List<String> items = [];

  MenuMonthsProvider menuMonthsProvider = MenuMonthsProvider();

  @override
  void initState() {
    items = context.read<MenuMonthsProvider>().menuItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<MenuMonthsProvider>().selectedIndex;
    return SizedBox(
      height: 60,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  context.read<MenuMonthsProvider>().setSelectedIndex(index);
                },
                child: Text(
                  items[index],
                  style: TextStyle(
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: selectedIndex == index
                        ? defaultPrimaryColor
                        : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          );
        },
      ),
    );
  }
}
