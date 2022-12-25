import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:play_around/constants/colors.dart';

import 'items_screen.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key, @PathParam() required this.lineItemId})
      : super(key: key);

  final int lineItemId;

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  LineItem? selectedItem;

  @override
  void initState() {
    selectedItem = [
      LineItem(
          1,
          'Hamburger "Stolpen Hero"',
          'Grovkvernet storfekiott, salat, mais, tomat, lok, syltagurk, hamburgerdressing',
          '123,-',
          123,
          'burger_big.png'),
      LineItem(2, 'Hamburger', '', '99,-', 99, 'burger_big.png'),
      LineItem(
          3,
          'Esso Hamburger',
          'Grovkvernet storfekjott 480g, salat, tomat, løkringer, cheddarost saus',
          '22 323,-',
          22323,
          'burger_big.png'),
    ].firstWhere((element) => element.id == widget.lineItemId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.navigateBack();
          },
          color: Colors.black, // Change the color of the icon
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: selectedItem!.id,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(selectedItem!.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.white,
                            width: 5,
                          ),
                        ),
                        color: profileColor,
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            selectedItem!.price,
                            style: const TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selectedItem!.name,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selectedItem!.description,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
