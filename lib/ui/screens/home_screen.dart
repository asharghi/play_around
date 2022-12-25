import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:play_around/routes/routes.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Hero(
            tag: "testing",
            child: Text("test"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {
                  context.router.push(const SecondRoute());
                },
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Gå til neste side'),
                      SizedBox(width: 20),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.white,
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
