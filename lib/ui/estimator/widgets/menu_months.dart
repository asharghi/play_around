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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: items.map((month) {
          return Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  context
                      .read<MenuMonthsProvider>()
                      .setSelectedIndex(items.indexOf(month));
                },
                child: Text(
                  month,
                  style: TextStyle(
                    fontWeight: selectedIndex == items.indexOf(month)
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: selectedIndex == items.indexOf(month)
                        ? defaultPrimaryColor
                        : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          );
        }).toList()),
      ),
    );
  }
}
