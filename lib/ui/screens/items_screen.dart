import 'package:flutter/material.dart';
import 'package:play_around/constants/colors.dart';
import 'package:play_around/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class LineItem {
  final int id;
  final String name;
  final String description;
  final String price;
  final int priceInt;
  final String image;

  LineItem(this.id, this.name, this.description, this.price, this.priceInt,
      this.image);
}

class _ItemsScreenState extends State<ItemsScreen> {
  final List<LineItem> items = [
    LineItem(
        1,
        'Hamburger "Stolpen Hero"',
        'Grovkvernet storfekiott, salat, mais, tomat, lok, syltagurk, hamburgerdressing',
        '123,-',
        123,
        'burger_small.png'),
    LineItem(2, 'Hamburger', '', '99,-', 99, 'burger_small.png'),
    LineItem(
        3,
        'Esso Hamburger',
        'Grovkvernet storfekjott 480g, salat, tomat, løkringer, cheddarost saus',
        '22 323,-',
        22323,
        'burger_small.png'),
  ];

  int _counter = 1;

  void _addToCounter() {
    setState(() {
      _counter++;
    });
  }

  void _removeFromCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    context.router.push(ItemRoute(lineItemId: items[index].id));
                  },
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Hero(
                        tag: items[index].id,
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(items[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.fromBorderSide(
                                    BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  color: profileColor,
                                ),
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text(
                                        items[index].price,
                                        style: const TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                items[index].name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(items[index].description),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: index == 0
                    ? Row(
                        children: [
                          const SizedBox(
                            width: 10 + 80 + 10,
                          ),
                          Flexible(
                            child: Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                ),
                                color: profileColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          "150g, Dobbel Bacon, Ost, Glutenfri brød",
                                          style: TextStyle(
                                            color: textColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                          )),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: _removeFromCounter,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: textColor,
                                                  ),
                                                  child: const Icon(
                                                    Icons.remove,
                                                    size: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '$_counter',
                                              style: const TextStyle(
                                                color: textColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: _addToCounter,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: textColor,
                                                  ),
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                              BorderSide(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                            ),
                                            color: profileColor,
                                          ),
                                          child: Center(
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Text(
                                                  '${(items[index].priceInt * _counter)},-',
                                                  style: const TextStyle(
                                                    color: textColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : null,
              )
            ],
          );
        },
      ),
    );
  }
}
