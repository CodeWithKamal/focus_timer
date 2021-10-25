import 'package:flutter/material.dart';
import 'package:focustimer/screens/main_screen.dart';
import 'package:focustimer/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focus Timer',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              actionsIconTheme: IconThemeData(color: green1, size: 27))),
      home: const MainScreen(),
    );
  }
}
