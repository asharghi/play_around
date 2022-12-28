import 'package:flutter/material.dart';
import 'package:play_around/constants/colors.dart';
import 'package:play_around/ui/estimator/widgets/menu_months.dart';

class EstimatorScreen extends StatelessWidget {
  const EstimatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: defaultPrimaryColor,
        elevation: 0,
        title: const Text('Estimert lønn'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: defaultPrimaryColor,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: const MenuMonths(),
            ),
          ),
        ],
      ),
    );
  }
}
