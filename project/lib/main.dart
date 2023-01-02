// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:project/screens/logScreen.dart';
import 'package:project/screens/screen1.dart';
import 'package:project/screens/homeScreen.dart';
import 'package:project/screens/carsdetails.dart';
import 'package:project/screens/screenmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), 
      // ignore: prefer_const_constructors
      home: const logScreen(),
    );
  }
}

