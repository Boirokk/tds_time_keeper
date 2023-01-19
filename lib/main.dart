import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import './homepage.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      initializeFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TDS Time Sheet',
      theme: ThemeData(primaryColor: Colors.teal),
      home: HomePage(),
    );
  }
}
