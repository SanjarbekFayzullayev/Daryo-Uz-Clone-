import 'package:flutter/material.dart';

import 'main_menyu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        tabBarTheme: TabBarTheme(
            labelColor: Colors.white, unselectedLabelColor: Colors.white),
      ),
      color: Colors.white,
      home: MainMenyu(),
    );
  }
}
