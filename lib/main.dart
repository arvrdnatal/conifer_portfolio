import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
  final suportedLocales = const [
    Locale('en', ''),
    Locale('pt', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Conifer's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: getDefaultThemeData(),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: suportedLocales,
      home: const MainScreen(),
    );
  }

  ThemeData getDefaultThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.brown.shade900,
      brightness: Brightness.dark,
    );
  }
}
