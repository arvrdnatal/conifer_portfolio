import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Conifer's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: getDefaultThemeData(),
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
