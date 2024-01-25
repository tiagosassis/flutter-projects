// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'src/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Moeda',
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}