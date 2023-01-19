import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tds_time_keeper/firebase_options.dart';
import './homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
