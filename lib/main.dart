// ignore_for_file: prefer_const_constructors
import 'package:belajar/container/dua.dart';
import 'package:belajar/container/satu.dart';
import 'package:belajar/form/formscreen.dart';
import 'package:belajar/listview/contohdua.dart';
import 'package:belajar/listview/contohempat.dart';
import 'package:belajar/listview/contohsatu.dart';
import 'package:belajar/listview/contohtiga.dart';
import 'package:belajar/listview/latihandua.dart';
import 'package:belajar/listview/wisata_screen.dart';
import 'package:belajar/row_collum/column_satu.dart';
import 'package:belajar/row_collum/latihansatu.dart';
import 'package:belajar/row_collum/row_column.dart';
import 'package:belajar/row_collum/row_satu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarForm()
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Flutter!',
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
