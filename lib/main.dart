import 'package:flutter/material.dart';
import 'package:play_around/providers/menu_months_provider.dart';
import 'package:play_around/routes/routes.gr.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  AppRoot({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuMonthsProvider>(
          create: (_) => MenuMonthsProvider(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 252, 109, 59),
        ),
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
