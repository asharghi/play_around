import 'package:flutter/material.dart';

class MenuMonthsProvider with ChangeNotifier {
  int _selectedIndex = 0;
  final List<String> _menuItems = [
    "Januar",
    "Februar",
    "Mars",
    "April",
    "Mai",
    "Juni",
    "Juli",
    "August",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  int get selectedIndex => _selectedIndex;
  List<String> get menuItems => _menuItems;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
