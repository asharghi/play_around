import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:play_around/routes/routes.gr.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            context.router.push(const HomeRoute());
          },
          color: Colors.black, // Change the color of the icon
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: Text('Fant ikke siden du leter etter'),
      ),
    );
  }
}
