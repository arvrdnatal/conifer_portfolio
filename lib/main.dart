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
  final colorScheme = {
    'bgAll': const Color.fromRGBO(13, 10, 11, 1),
    'bgWidgets': const Color.fromRGBO(30, 30, 31, 1),
    'text': const Color.fromRGBO(243, 239, 245, 1),
    'primary': const Color.fromRGBO(114, 176, 29, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Júlia Lamboglia",
      debugShowCheckedModeBanner: false,
      theme: getDefaultThemeData(),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: suportedLocales,
      home: const MainScreen(),
    );
  }

  ThemeData getDefaultThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: colorScheme['bgAll'],
      brightness: Brightness.dark,
    );
  }
}
