import 'package:flutter/material.dart';
import 'package:template/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: const EdgeInsets.all(15.0), child: HomePage()),
      ),
    );
  }
}
