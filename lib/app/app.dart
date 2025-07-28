import 'package:flutter/material.dart';
// import 'package:login_page/screen/screen2.dart';
import 'package:login_page/screen/screen3.dart';

class myFirstApp extends StatelessWidget {
  const myFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen3(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
