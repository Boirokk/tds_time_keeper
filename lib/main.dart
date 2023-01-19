
import 'package:flutter/material.dart';
import './homepage.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TDS Time Sheet',
      theme: ThemeData(primaryColor: Colors.teal),
      home: HomePage(),
    );
  }
}
