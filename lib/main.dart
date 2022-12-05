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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: getDefaultThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  ThemeData getDefaultThemeData() {
    return ThemeData(
      primarySwatch: Colors.blue,
    );
  }
}
