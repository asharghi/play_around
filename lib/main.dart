import 'package:flutter/material.dart';
import 'package:play_around/providers/menu_months_provider.dart';
import 'package:play_around/routes/routes.gr.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();

  static _AppRootState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AppRootState>();
}

class _AppRootState extends State<AppRoot> {
  final _appRouter = AppRouter();
  Locale _locale = const Locale('no');

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

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
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        locale: _locale, // Remember to run: flutter gen-l10n
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
