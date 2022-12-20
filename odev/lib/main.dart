// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:odev/screens/screen1.dart';
import 'package:odev/screens/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
      home: const screen2(),
    );
  }
}

