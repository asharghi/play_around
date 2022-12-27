import 'package:flutter/material.dart';
import 'package:play_around/constants/colors.dart';
import 'package:play_around/providers/menu_months_provider.dart';

class MenuMonths extends StatefulWidget {
  final List<String> months;
  final int selectedIndex;
  const MenuMonths(
      {Key? key, required this.months, required this.selectedIndex})
      : super(key: key);

  @override
  State<MenuMonths> createState() => _MenuMonthsState();
}

class _MenuMonthsState extends State<MenuMonths> {
  List<String> items = [];
  int selectedIndex = 0;

  MenuMonthsProvider menuMonthsProvider = MenuMonthsProvider();

  @override
  void initState() {
    items = widget.months;
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              Text(
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
