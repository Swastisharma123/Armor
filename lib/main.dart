// import 'package:armor/firebase_options.dart';
import 'package:armor/home.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARMOR | Your Personal Cyber Assistant',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
