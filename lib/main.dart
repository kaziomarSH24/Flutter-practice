
import 'package:flutter/material.dart';
import 'package:login_page/screen2.dart';

void main(List<String> args) {
  runApp(
    const myFirstApp(),
  );
}

class myFirstApp extends StatelessWidget {
  const myFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen2(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}