import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          const Hero(
            tag: "testing",
            child: Text("test"),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                context.router.navigateBack();
              },
              child: Row(mainAxisSize: MainAxisSize.min, children: const [
                Icon(Icons.arrow_left),
                SizedBox(width: 20),
                Text('Gå tilbake'),
              ]),
            ),
          ]),
        ],
      ),
    );
  }
}
