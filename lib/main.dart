import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/shared/shared.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
