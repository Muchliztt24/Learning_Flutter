// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hello World'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Hello, Flutter!',style: TextStyle(
            color: Colors.yellow,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
          ),),
        ),
      ),
    );
  }
}
