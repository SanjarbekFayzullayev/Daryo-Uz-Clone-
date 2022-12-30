import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'main_menyu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: const [
      Locale('uz', 'UZ'),
      Locale('ru', 'RU'),
    ],
    saveLocale: true,
    path: "assets/lang",
  ));
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
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white, unselectedLabelColor: Colors.white),
      ),
      home: MainMenyu(),
    );
  }
}
