import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:play_around/main.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.helloWorld),
            TextButton(
              onPressed: () => _selectDate(context),
              child: Text(AppLocalizations.of(context)!.openCalendar),
            ),
            ...AppLocalizations.supportedLocales
                .map(
                  (lang) => Localizations.override(
                    context: context,
                    locale: Locale(lang.languageCode),
                    child: TextButton(
                        onPressed: () => AppRoot.of(context)!.setLocale(
                              Locale(lang.languageCode),
                            ),
                        child: Builder(
                          builder: (BuildContext context) {
                            return Text(
                              AppLocalizations.of(context)!.langName,
                            );
                          },
                        )),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
