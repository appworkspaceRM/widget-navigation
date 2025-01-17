import 'package:flutter/material.dart';
import 'package:flutter_application_20/my_navigation.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyNavigation(),
    );
  }
}
